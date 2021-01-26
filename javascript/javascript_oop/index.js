class Vehicle {
    constructor(merk, type, bouwjaar, wielen) {
        this.merk = merk;
        this.type = type;
        this.bouwjaar = bouwjaar;
        this.wielen = wielen
    }

    start() {
        return 'dikke boktor'
    }

    toString() {
        return `Dit voertuig is van het merk ${this.merk}, gebouwd in ${this.bouwjaar} en is een ${this.type}`
    }
}

var vehicle = new Vehicle('Ferrari', '812', 1943)
document.getElementById("vehicle").innerHTML = vehicle;

vehicle.toString()


class Tank extends Vehicle {
    constructor() {
        super(...arguments);
        this.wielen = 4
        this.spiegels = 2
        this.stuur = 1
    }
}

var tank = new Tank('tankiie online', '4729-xz', 1938)
console.log(tank)

document.getElementById("tank").innerHTML = tank;



class Motorcycle extends Vehicle {
    constructor() {
        super(...arguments)
        this.spiegels = 2
        this.stuur = 1
        this.wielen = 2;
    }
}

var motorcycle = new Motorcycle('Yamaza', '35-zxs-4', 1942)
console.log(motorcycle)

document.getElementById("root").innerHTML = motorcycle;