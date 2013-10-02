#!/usr/bin/env ruby

require 'erb'
require 'fileutils'
require 'optparse'

ROOT_DIR = File.dirname(__FILE__)
DATA_DIR = File.join(ROOT_DIR, 'data')
TEMPLATES_DIR = File.join(ROOT_DIR, 'templates')
LATEX_CIN_TEMPLATE = File.join(TEMPLATES_DIR, 'latex.cin.erb')
LATEX_EL_TEMPLATE = File.join(TEMPLATES_DIR, 'latex.el.erb')

def escape(str)
  str.gsub(/\\/, '\\\\\\\\').gsub(/"/, '\\\\"')
end

def load_data(data_dir)
  latex_to_unicode = {}
  latex_to_unicode_files = Dir.glob("#{data_dir}/*")
  latex_to_unicode_files.each do |path|
    File.open(path).each do |line|
      fields = line.strip.split()
      if fields.size != 2
        raise Exception('expected two fields on line: #{line}')
      end
      latex_to_unicode[fields[0]] = fields[1]
    end
  end
  latex_to_unicode
end

def generate(latex_el, latex_cin)
  latex_to_unicode = load_data(DATA_DIR)

  if (latex_el)
    el_template = ERB.new(File.open(LATEX_EL_TEMPLATE).read)
    File.open(latex_el, 'w') { |fout| fout.puts el_template.result(binding) }
  end

  if (latex_cin)
    cin_template = ERB.new(File.open(LATEX_CIN_TEMPLATE).read)
    File.open(latex_cin, 'w') { |fout| fout.puts cin_template.result(binding) }
  end
end

if $0 == __FILE__

  options = {}
  OptionParser.new do |opts|
    opts.banner =
      "usage: #{$0} [OPTIONS] [ARG ...]"

    opts.on("-e", "--emacs-lisp-file FILE") do |arg|
      options[:emacs_lisp_file] = arg
    end

    opts.on("-c", "--cin-file FILE") do |arg|
      options[:cin_file] = arg
    end
  end.parse!

  generate(options[:emacs_lisp_file], options[:cin_file])
end
