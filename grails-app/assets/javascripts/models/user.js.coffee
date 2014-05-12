Cafeblons.User = DS.Model.extend
    mail: DS.attr "string"
    basket: DS.hasMany Cafeblons.Basket