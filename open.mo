model vcdofficial
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage2(V = 13800, freqHz = 60, phase = 0) annotation(
    Placement(visible = true, transformation(origin = {-96, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealTransformer idealTransformer3(considerMagnetization = false, n = 1 / 16) annotation(
    Placement(visible = true, transformation(origin = {-64, 9}, extent = {{-10, -9}, {10, 9}}, rotation = 0)));
  Modelica.Electrical.PowerConverters.ACDC.DiodeBridge2Pulse diodeBridge2Pulse1(GoffDiode = 1e-5, RonDiode = 1e-5, VkneeDiode = 0)  annotation(
    Placement(visible = true, transformation(origin = {-30, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground4 annotation(
    Placement(visible = true, transformation(origin = {-94, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground5 annotation(
    Placement(visible = true, transformation(origin = {-48, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 10)  annotation(
    Placement(visible = true, transformation(origin = {48, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 0.20)  annotation(
    Placement(visible = true, transformation(origin = {78, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.PowerConverters.DCAC.SinglePhase2Level singlePhase2Level1(VkneeDiode = 0)  annotation(
    Placement(visible = true, transformation(origin = {112, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.PowerConverters.DCDC.Control.SignalPWM signalPWM1(useConstantDutyCycle = false)  annotation(
    Placement(visible = true, transformation(origin = {114, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine1(amplitude = 0.5, freqHz = 60, offset = 0.5)  annotation(
    Placement(visible = true, transformation(origin = {60, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 10) annotation(
    Placement(visible = true, transformation(origin = {142, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {24, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
    Placement(visible = true, transformation(origin = {48, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V = 100e3)  annotation(
    Placement(visible = true, transformation(origin = {26, 14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage2(V = 100e3)  annotation(
    Placement(visible = true, transformation(origin = {26, -14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor3(R = 100) annotation(
    Placement(visible = true, transformation(origin = {0, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(resistor3.n, diodeBridge2Pulse1.dc_n) annotation(
    Line(points = {{0, -2}, {-20, -2}, {-20, 6}, {-20, 6}}, color = {0, 0, 255}));
  connect(resistor3.p, diodeBridge2Pulse1.dc_p) annotation(
    Line(points = {{0, 18}, {-20, 18}, {-20, 18}, {-20, 18}}, color = {0, 0, 255}));
  connect(ground5.p, idealTransformer3.n2) annotation(
    Line(points = {{-48, -18}, {-54, -18}, {-54, 0}}, color = {0, 0, 255}));
  connect(sineVoltage2.n, ground4.p) annotation(
    Line(points = {{-96, -2}, {-94, -2}, {-94, -18}}, color = {0, 0, 255}));
  connect(idealTransformer3.n2, diodeBridge2Pulse1.ac_n) annotation(
    Line(points = {{-54, 0}, {-58, 0}, {-58, 0}, {-50, 0}, {-50, 2}, {-46, 2}, {-46, -2}, {-42, -2}, {-42, 3}, {-40, 3}, {-40, 4.5}, {-40, 4.5}, {-40, 6}}, color = {0, 0, 255}));
  connect(diodeBridge2Pulse1.ac_p, idealTransformer3.p2) annotation(
    Line(points = {{-40, 18}, {-54, 18}}, color = {0, 0, 255}));
  connect(sineVoltage2.p, idealTransformer3.p1) annotation(
    Line(points = {{-96, 18}, {-74, 18}}, color = {0, 0, 255}));
  connect(idealTransformer3.n1, sineVoltage2.n) annotation(
    Line(points = {{-74, 0}, {-85, 0}, {-85, 2}, {-96, 2}, {-96, 2}, {-96, 2}, {-96, 0}, {-96, 0}, {-96, -2}}, color = {0, 0, 255}));
  connect(resistor2.n, ground2.p) annotation(
    Line(points = {{142, -4}, {48, -4}, {48, -10}, {48, -10}}, color = {0, 0, 255}));
  connect(constantVoltage2.n, singlePhase2Level1.dc_n) annotation(
    Line(points = {{26, -24}, {102, -24}, {102, 0}, {102, 0}}, color = {0, 0, 255}));
  connect(constantVoltage1.p, resistor1.p) annotation(
    Line(points = {{26, 24}, {38, 24}, {38, 24}, {38, 24}}, color = {0, 0, 255}));
  connect(constantVoltage1.n, constantVoltage2.p) annotation(
    Line(points = {{26, 4}, {26, 4}, {26, -4}, {26, -4}}, color = {0, 0, 255}));
  connect(constantVoltage2.p, ground2.p) annotation(
    Line(points = {{26, -4}, {48, -4}, {48, -10}, {48, -10}}, color = {0, 0, 255}));
  connect(singlePhase2Level1.ac, resistor2.p) annotation(
    Line(points = {{122, 6}, {127, 6}, {127, 16}, {142, 16}}, color = {0, 0, 255}));
  connect(singlePhase2Level1.dc_p, inductor1.n) annotation(
    Line(points = {{102, 12}, {96, 12}, {96, 22}, {88, 22}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(
    Line(points = {{58, 24}, {62, 24}, {62, 22}, {68, 22}}, color = {0, 0, 255}));
  connect(sine1.y, signalPWM1.dutyCycle) annotation(
    Line(points = {{71, -36}, {102, -36}}, color = {0, 0, 127}));
  connect(signalPWM1.notFire, singlePhase2Level1.fire_n) annotation(
    Line(points = {{120, -24}, {118, -24}, {118, -6}, {118, -6}}, color = {255, 0, 255}));
  connect(signalPWM1.fire, singlePhase2Level1.fire_p) annotation(
    Line(points = {{108, -24}, {106, -24}, {106, -6}, {106, -6}}, color = {255, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")),
    Diagram(graphics = {Text(origin = {-76, 34}, extent = {{-4, 4}, {26, -20}}, textString = "200MVA 13.8/220kv"),  Text(origin = {7, 48}, extent = {{-21, -6}, {21, 6}}, textString = "HVDC TRANSMICION")}, coordinateSystem(initialScale = 0.1)));end vcdofficial;
