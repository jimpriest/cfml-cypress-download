import { validateImage } from "./utils";
const path = require("path");

describe("Download a dynamically generated file", function () {
	context("When clicking the download like", function () {
		it("the Cypress test should complete without hanging", function () {
			cy.visit("http://localhost:88");
			cy.contains('h1', 'Cypress Download File Test')
			cy.log("** click download link **");
			cy.get("#download").click();
			cy.log("** At this point if you look in the downloads directory - the file *is* downloaded but Cypress is still waiting ** ")
			validateImage();
		});
	});
});
