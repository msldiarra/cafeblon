Cafeblons.Product = DS.Model.extend
    aroma: DS.attr "string"
    imageUrl: DS.attr "string"
    bigImageUrl: DS.attr "string"
    price: DS.attr "number"
    count: DS.attr "number"
    cru: DS.attr 'string'
    basket: DS.belongsTo Cafeblons.Basket
    total: ( () -> return @get('price') * @get('count') ).property 'price', 'count'



Cafeblons.Product.FIXTURES = [

    {id:1, aroma:'Kazaar', imageUrl:'https://www.nespresso.com/ecom/medias/sys_master/public/9149705650206/C-0089_mediaQuickOrder.png', price:350, count:0, cru: 'intenso', bigImageUrl: 'images/kaazar.png'},
    {id:2,aroma:'Dharkan', imageUrl:'https://www.nespresso.com/ecom/medias/sys_master/public/9149719019550/C-0090_mediaQuickOrder.png', price:350, count:0, cru: 'intenso', bigImageUrl: 'images/kaazar.png'},
    {id:3,aroma:'Ristretto', imageUrl:'https://www.nespresso.com/ecom/medias/sys_master/public/8887596318750/CH_7615.20_mediaQuickOrder.png', price:350, count:0, cru: 'intenso' , bigImageUrl: 'images/kaazar.png'},
    {id:4,aroma:'Arpeggio', imageUrl:'https://www.nespresso.com/ecom/medias/sys_master/public/8887582294046/CH_7431.20_mediaQuickOrder.png', price:350, count:0, cru: 'intenso',  bigImageUrl: 'images/kaazar.png' },
    {id:5,aroma:'Roma', imageUrl:'https://www.nespresso.com/ecom/medias/sys_master/public/8887597432862/CH_7439.20_mediaQuickOrder.png', price:350, count:0, cru: 'intenso',  bigImageUrl: 'images/kaazar.png' }

]