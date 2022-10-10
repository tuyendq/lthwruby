require "Watir"
require "webdrivers"


RSpec.describe Tutorial do
    it "should explore w3schools.com" do
        browser = Watir::Browser.new
        browser.goto "https://www.w3schools.com/"

        expect(browser.text_field(id: "search2").exists?).to equal(true)

        browser.text_field(id: "search2").set "Ruby"

        expect(browser.text_field(id: "search2").value).to match("Ruby")
        browser.button(id: "learntocode_searchbtn").click

    end
end
