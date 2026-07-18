const cds = require('@sap/cds')

describe('Service Test', () => {
  const { test } = cds
  it('should start the server and respond', async () => {
    const { GET } = test(__dirname + '/../')
    const { status } = await GET('/browse/Books')
    expect(status).toBe(200)
  })
})