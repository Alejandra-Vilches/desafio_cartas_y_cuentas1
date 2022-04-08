class CuentaBancaria
    attr_accessor :nombre_usuario
    def initialize(nombre_usuario, numero_cuenta, vip = 0)

        raise RangeError, 'Los números de cuentas deben tener 8 dígitos' if numero_cuenta.digits.count != 8
        raise RangeError, 'Las cuentas VIP son 1 o 0' if vip != 0 && vip != 1
       
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @vip = vip
    end
    def numero_de_cuenta
        "#{@vip}-#{@numero_cuenta}"
    end
end

CuentaBancaria.new('Alejandra Vilches', 84747209).numero_de_cuenta

CuentaBancaria.new('Leia Pardo', 49204849, 1).numero_de_cuenta

CuentaBancaria.new('Ignacio Orellana', 95838284984).numero_de_cuenta

CuentaBancaria.new('Juana López', 85738548, 2).numero_de_cuenta

    