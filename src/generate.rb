#!/usr/bin/env ruby

require 'erb'
require 'fileutils'

ROOT_DIR = File.dirname(__FILE__)
DATA_DIR = File.join(ROOT_DIR, 'data')
TEMPLATES_DIR = File.join(ROOT_DIR, 'templates')
BUILD_DIR = File.join(ROOT_DIR, 'build')

LATEX_FILES = %w(
  latex_to_unicode.txt
  latex_to_unicode_english_punct.txt
  latex_to_unicode_latin_accent.txt
  latex_to_unicode_greek.txt
  latex_to_unicode_applekeys.txt
  latex_to_unicode_mathfont.txt
  latex_to_unicode_not.txt
  latex_to_unicode_subscripts.txt
  latex_to_unicode_superscripts.txt
)

LATEX_TO_UNICODE_FILES = LATEX_FILES.map { |lf| File.join(DATA_DIR, lf) }

FileUtils.mkdir_p(BUILD_DIR)

LATEX_CIN = File.join(BUILD_DIR, 'latex.cin')
LATEX_CIN_TEMPLATE = File.join(TEMPLATES_DIR, 'latex.cin.erb')

LATEX_EL = File.join(BUILD_DIR, 'latex.el')
LATEX_EL_TEMPLATE = File.join(TEMPLATES_DIR, 'latex.el.erb')

def escape(str)
  str.gsub(/\\/, '\\\\\\\\').gsub(/"/, '\\\\"')
end

latex_to_unicode = {}

LATEX_TO_UNICODE_FILES.each do |latex_to_unicode_file|
  File.open(latex_to_unicode_file).each do |line|
    fields = line.strip.split()
    raise Exception('expected two fields on line: #{line}') if fields.size != 2
    latex_to_unicode[fields[0]] = fields[1]
  end
end

cin_template = ERB.new(File.open(LATEX_CIN_TEMPLATE).read)

File.open(LATEX_CIN, 'w') { |fout| fout.puts cin_template.result(binding) }

el_template = ERB.new(File.open(LATEX_EL_TEMPLATE).read)

File.open(LATEX_EL, 'w') { |fout| fout.puts el_template.result(binding) }
