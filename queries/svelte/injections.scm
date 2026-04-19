; ~/.config/nvim/after/queries/svelte/injections.scm

(
  (script_element
    (start_tag
      (attribute
        (attribute_name) @attr_name
        (quoted_attribute_value (attribute_value) @attr_value))
      (#eq? @attr_name "lang")
      (#eq? @attr_value "js"))
    (raw_text) @injection.content)
  (#set! injection.language "javascript")
)

(
  (script_element
    (start_tag
      (attribute
        (attribute_name) @attr_name
        (quoted_attribute_value (attribute_value) @attr_value))
      (#eq? @attr_name "lang")
      (#eq? @attr_value "ts"))
    (raw_text) @injection.content)
  (#set! injection.language "typescript")
)

((start_tag (tag_name) @_tag)
  (raw_text) @injection.content
  (#set! injection.language "html")
  (#set! injection.combined))

((style_element) @injection.content
  (#set! injection.language "css"))

(comment) @comment
