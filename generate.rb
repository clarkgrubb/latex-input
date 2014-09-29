#!/usr/bin/env ruby

require 'erb'
require 'fileutils'
require 'optparse'

ROOT_DIR = File.dirname(__FILE__)
DATA_DIR = File.join(ROOT_DIR, 'data')
TEMPLATES_DIR = File.join(ROOT_DIR, 'templates')
CIN_TEMPLATE = File.join(TEMPLATES_DIR, 'cin.erb')
EL_TEMPLATE = File.join(TEMPLATES_DIR, 'el.erb')
TXT_TEMPLATE = File.join(TEMPLATES_DIR, 'txt.erb')
AHK_TEMPLATE = File.join(TEMPLATES_DIR, 'ahk.erb')

def escape(str)
  str.gsub(/\\/, '\\\\\\\\').gsub(/"/, '\\\\"')
end

def load_data(notation_to_unicode_files)
  notation_to_unicode = {}
  notation_to_unicode_files.each do |path|
    File.open(path, "r:utf-8").each do |line|
      fields = line.strip.split()
      if fields.size != 2
        raise Exception.new("expected two fields on line: #{line}")
      end
      notation_to_unicode[fields[0]] = fields[1]
    end
  end
  notation_to_unicode
end

def generate(name, latex_el, latex_cin,
             stats_file, latex_txt, latex_ahk, data_files)
  notation_to_unicode = load_data(data_files)

  if (latex_el)
    el_template = ERB.new(File.open(EL_TEMPLATE).read)
    File.open(latex_el, 'w') { |fout| fout.puts el_template.result(binding) }
  end

  if (latex_cin)
    cin_template = ERB.new(File.open(CIN_TEMPLATE).read)
    File.open(latex_cin, 'w') { |fout| fout.puts cin_template.result(binding) }
  end


  if (latex_txt)
    txt_template = ERB.new(File.open(TXT_TEMPLATE).read)
    File.open(latex_txt, 'w') { |fout| fout.puts txt_template.result(binding) }
  end

  if (latex_ahk)
    ahk_template = ERB.new(File.open(AHK_TEMPLATE).read)
    File.open(latex_ahk, 'w') { |fout| fout.puts ahk_template.result(binding) }
  end

  if (stats_file)
    File.open(stats_file, 'w') do |fout|
      fout.puts "characters: #{notation_to_unicode.values.uniq.size}"
      fout.puts "input strings: #{notation_to_unicode.keys.uniq.size}"
    end
  end
end

if $0 == __FILE__

  options = {}
  OptionParser.new do |opts|
    opts.banner =
      "usage: #{$0} [OPTIONS] [ARG ...]"

    opts.on("-n", "--name NAME") do |arg|
      options[:name] = arg
    end

    opts.on("-e", "--emacs-lisp-file FILE") do |arg|
      options[:emacs_lisp_file] = arg
    end

    opts.on("-c", "--cin-file FILE") do |arg|
      options[:cin_file] = arg
    end

    opts.on("-i", "--ibus-file FILE") do |arg|
      options[:ibus_file] = arg
    end

    opts.on("-a", "--autohotkey-file FILE") do |arg|
      options[:autohotkey_file] = arg
    end

    opts.on("-s", "--stats-file FILE") do |arg|
      options[:stats_file] = arg
    end

  end.parse!

  generate(options[:name],
           options[:emacs_lisp_file],
           options[:cin_file],
           options[:stats_file],
           options[:ibus_file],
           options[:autohotkey_file],
           ARGV)
end
