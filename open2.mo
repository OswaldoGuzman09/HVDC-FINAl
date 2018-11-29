model ll
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage1(V = 13800, freqHz = 60, phase = 0)  annotation(
    Placement(visible = true, transformation(origin = {-82, 68}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {-82, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
    Placement(visible = true, transformation(origin = {28, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 13800 ^ 2 / 200000)  annotation(
    Placement(visible = true, transformation(origin = {74, 64}, extent = {{-8, -8}, {8, 8}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground3 annotation(
    Placement(visible = true, transformation(origin = {74, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealTransformer idealTransformer1( considerMagnetization = false, n = 1 /16)  annotation(
    Placement(visible = true, transformation(origin = {-38, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Ideal.IdealTransformer idealTransformer2( considerMagnetization = false, n = 16) annotation(
    Placement(visible = true, transformation(origin = {38, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Conductor conductor1(G = 1 / 0.000005, T_ref = 300.15)  annotation(
    Placement(visible = true, transformation(origin = {-2, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(conductor1.n, idealTransformer2.p1) annotation(
    Line(points = {{8, 76}, {28, 76}, {28, 78}, {28, 78}}, color = {0, 0, 255}));
  connect(idealTransformer1.p2, conductor1.p) annotation(
    Line(points = {{-28, 78}, {-12, 78}, {-12, 76}, {-12, 76}}, color = {0, 0, 255}));
  connect(sineVoltage1.n, ground1.p) annotation(
    Line(points = {{-82, 58}, {-82, 38}}, color = {0, 0, 255}));
  connect(idealTransformer2.n1, idealTransformer1.n2) annotation(
    Line(points = {{28, 58}, {-28, 58}}, color = {0, 0, 255}));
  connect(ground2.p, idealTransformer2.n1) annotation(
    Line(points = {{28, 40}, {28, 58}}, color = {0, 0, 255}));
  connect(resistor1.p, idealTransformer2.p2) annotation(
    Line(points = {{74, 72}, {61, 72}, {61, 72}, {48, 72}, {48, 78}, {48, 78}}, color = {0, 0, 255}));
  connect(resistor1.n, idealTransformer2.n2) annotation(
    Line(points = {{74, 56}, {48, 56}, {48, 58}, {48, 58}}, color = {0, 0, 255}));
  connect(ground3.p, resistor1.n) annotation(
    Line(points = {{74, 42}, {74, 56}}, color = {0, 0, 255}));
  connect(idealTransformer1.n1, sineVoltage1.n) annotation(
    Line(points = {{-48, 58}, {-82, 58}}, color = {0, 0, 255}));
  connect(idealTransformer1.p1, sineVoltage1.p) annotation(
    Line(points = {{-48, 78}, {-82, 78}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")),
    Diagram(graphics = {Text(origin = {-50, 96}, extent = {{-4, 4}, {26, -20}}, textString = "200MVA 13.8/220kv"), Text(origin = {26, 94}, extent = {{-4, 4}, {26, -20}}, textString = "200MVA 220/13.8kv"), Text(origin = {-14, 105}, extent = {{-14, 5}, {60, -23}}, textString = "TRANSMISIÓN AC (TRADICIONAL)")}, coordinateSystem(initialScale = 0.1)));end ll;
