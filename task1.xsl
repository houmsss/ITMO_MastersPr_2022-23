<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="строка">
    <html>
      <head>
        <title></title>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
        <script id="MathJax-script" async="true" src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
      </head>
      <body>
        <h4 id="author" title="GossJS">Александр Перепелкин</h4>

        <math xmlns="http://www.w3.org/1998/Math/MathML">
          <mi>
            <xsl:value-of select="операнд"/>
          </mi>
          <mo>
            <xsl:value-of select="оператор[1]"/>
          </mo>

          <msqrt>
            <mrow>
              <mfrac>
                <mn>
                  <xsl:value-of select="корень/строка/дробь/строка[1]/число"/>
                </mn>
                <mi>
                  <xsl:value-of select="корень/строка/дробь/строка[2]/операнд"/>
                </mi>
              </mfrac>
              <mrow>
                <munderover displaystyle="true">
                  <mo>
                    <xsl:value-of select="корень/строка/строка[1]/низверх/строка[1]/оператор"/>
                  </mo>

                  <mrow>
                    <mi>
                      <xsl:value-of select="корень/строка/строка[1]/низверх/строка[2]/операнд"/>
                    </mi>
                    <mo>
                      <xsl:value-of select="корень/строка/строка[1]/низверх/строка[2]/оператор"/>
                    </mo>
                    <mn>
                      <xsl:value-of select="корень/строка/строка[1]/низверх/строка[2]/число"/>
                    </mn>
                  </mrow>

                  <mrow>
                    <mi>
                      <xsl:value-of select="корень/строка/строка[1]/низверх/строка[3]/операнд"/>
                    </mi>
                  </mrow>


                </munderover>

                <mrow>
                  <msup>
                    <mrow>
                      <mo>
                        <xsl:value-of select="корень/строка/строка[1]/строка/верх/строка[1]/оператор[1]"/>
                      </mo>
                      <msub>
                        <mrow>
                          <mi>
                            <xsl:value-of select="корень/строка/строка[1]/строка/верх/строка[1]/низ/строка[1]/операнд"/>
                          </mi>
                        </mrow>
                        <mrow>
                          <mi>
                            <xsl:value-of select="корень/строка/строка[1]/строка/верх/строка[1]/низ/строка[2]/операнд"/>
                          </mi>
                        </mrow>
                      </msub>
                      <mo>
                        <xsl:value-of select="корень/строка/строка[1]/строка/верх/строка[1]/оператор[2]"/>
                      </mo>
                      <mi>
                        <xsl:value-of select="корень/строка/строка[1]/строка/верх/строка[1]/операнд"/>
                      </mi>
                      <mo>
                        <xsl:value-of select="корень/строка/строка[1]/строка/верх/строка[1]/оператор[3]"/>
                      </mo>

                    </mrow>
                    <mrow>
                      <mn>
                        <xsl:value-of select="корень/строка/строка[1]/строка/верх/строка[2]/число"/>
                      </mn>
                    </mrow>
                  </msup>
                </mrow>
              </mrow>




            </mrow>
          </msqrt>

          <mo>
            <xsl:value-of select="оператор[2]"/>
          </mo>
        </math>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>