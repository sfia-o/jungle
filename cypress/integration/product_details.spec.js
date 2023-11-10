describe('visit product details page', () => {

  beforeEach(() => {
    cy.visit('http://localhost:3000')
  });
  
  it('should navigate from homepage to product page', () => {
    cy.get('.product img').first().click();
    
  });

})