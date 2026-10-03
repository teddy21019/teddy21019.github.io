# frozen_string_literal: true

# Treat empty BibTeX fields (e.g. `abstract = {}`) as absent.
#
# MAINTAINING.md asks for an `abstract = {}` placeholder on every entry so it is
# easy to fill in later. Liquid treats an empty string as true, so without this
# the publication template would show an "Abs" button that opens nothing.
require "bibtex"

module DropEmptyBibFields
  def parse(*args, **kwargs, &block)
    bib = super
    bib.each do |entry|
      next unless entry.is_a?(BibTeX::Entry)

      entry.fields.delete_if { |_name, value| value.to_s.strip.empty? }
    end
    bib
  end
end

BibTeX::Bibliography.singleton_class.prepend(DropEmptyBibFields)
