#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "../lib/ruby_av"

output_path = "#{Dir.pwd}/tmp"
output_file = "#{output_path}/output.mp4"

RubyAv::Encoder.run(output_file) do |enc|
  enc.add_input("#{output_path}/input.mp4")
  enc.add_input("#{output_path}/input.mp4")

  enc.add_filter_complex :concat

  enc.transcode(validate: true)
end
