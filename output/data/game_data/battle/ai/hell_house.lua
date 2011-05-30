hell_house_a = {
    on_start = function(self)
0x0000 0x12 PushAddress(0x0000)
0x0003 0x02 LoadValue(0x2060)
0x0006 0x01 LoadValue(0x4060)
0x0009 0x80 FilterValueByMask()
0x000a 0x83 CountActiveBits()
0x000b 0x02 LoadValue(0x2050)
0x000e 0x01 LoadValue(0x4060)
0x0011 0x80 FilterValueByMask()
0x0012 0x40 CompareEqual()
0x0013 0x90 StoreValue()
0x0014 0x12 PushAddress(0x0000)
0x0017 0x02 LoadValue(0x0000)
0x001a 0x02 LoadValue(0x4120)
0x001d 0x80 FilterValueByMask()
0x001e 0x60 PushImmediate(0x2d)
0x0020 0x40 CompareEqual()
0x0021 0x90 StoreValue()
0x0022 0x73 FinishScript()

        return 0;
    end;

    on_action = function(self)
0x0000 SetRandomOpponentToAttack();
0x0008 JumpIfRandomNot(1/0x03)(0x0019);
0x0010 0x60 PushImmediate(0x20)
0x0012 0x61 PushImmediate(0x013c)
0x0015 0x92 RunCommand()
0x0016 0x72 JumpTo(0x001f)
0x0019 0x60 PushImmediate(0x20)
0x001b 0x61 PushImmediate(0x013d)
0x001e 0x92 RunCommand()
0x001f 0x73 FinishScript()

        return 0;
    end;

    on_counter = function(self)
        0x0000 0x02 LoadValue(0x2060)
        0x0003 0x03 LoadValue(0x4160)
        0x0006 0x80 FilterValueByMask()
        0x0007 0x02 LoadValue(0x2060)
        0x000a 0x03 LoadValue(0x4180)
        0x000d 0x80 FilterValueByMask()
        0x000e 0x60 PushImmediate(0x04)
        0x0010 0x33 MathDiv()
        0x0011 0x60 PushImmediate(0x03)
        0x0013 0x32 MathMul()
        0x0014 0x43 CompareLessEqual()
        0x0015 0x70 JumpIfFalse(0x0098)
        0x0018 JumpIfRandomNot(1/0x02)(0x0098);
            set_all_enemies_as_target();
            battle:run_command(Battle.MONSTER_ACTION, 318);

            [800f83e0 + self_id * 0x68 + 0x4 + b(0)] = bit(0);
            [800f83e0 + self_id * 0x68 + 0x4 + b(3)] = bit(0);

            [800f83e0 + hell_house_b_id * 0x68 + 0x4 + b(0)] = bit(1);
            [800f83e0 + hell_house_b_id * 0x68 + 0x4 + b(2)] = bit(1);
            [800f83e0 + hell_house_b_id * 0x68 + 0x4 + b(3)] = bit(1);
            [800f83e0 + hell_house_b_id * 0x68 + 0x4 + b(4)] = bit(1);

            0x0069 0x02 LoadValue(0x0000)
            0x006c 0x02 LoadValue(0x2060)
            0x006f 0x94 unknown()

            [800f83e0 + self_id * 0x68 + 0x4 + b(0)] = bit(0);
            [800f83e0 + self_id * 0x68 + 0x4 + b(2)] = bit(0);
            [800f83e0 + self_id * 0x68 + 0x4 + b(3)] = bit(0);
            [800f83e0 + self_id * 0x68 + 0x4 + b(4)] = bit(0);
        end;

        return 0;
    end;

    on_death = function(self)
0x0000 0x12 PushAddress(0x0000)
0x0003 0x10 PushAddress(0x4020)
0x0006 0x80 FilterValueByMask()
0x0007 0x60 PushImmediate(0x00)
0x0009 0x90 StoreValue()
0x000a 0x12 PushAddress(0x0000)
0x000d 0x10 PushAddress(0x4023)
0x0010 0x80 FilterValueByMask()
0x0011 0x60 PushImmediate(0x00)
0x0013 0x90 StoreValue()
0x0014 0x12 PushAddress(0x0000)
0x0017 0x10 PushAddress(0x4022)
0x001a 0x80 FilterValueByMask()
0x001b 0x60 PushImmediate(0x00)
0x001d 0x90 StoreValue()
0x001e 0x12 PushAddress(0x0000)
0x0021 0x10 PushAddress(0x4024)
0x0024 0x80 FilterValueByMask()
0x0025 0x60 PushImmediate(0x00)
0x0027 0x90 StoreValue()
0x0028 0x73 FinishScript()

        return 0;
    end;
};
