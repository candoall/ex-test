def expect_contents(contents)
  contents.each do |text|
    expect(page).to have_content(text)
  end
end
