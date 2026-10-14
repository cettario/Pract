from pathlib import Path
from lxml import etree

folder=Path(__file__).resolve().parent
source=etree.parse(str(folder/'sequence.xml'))
transform=etree.XSLT(etree.parse(str(folder/'sum.xsl')))
result=transform(source)
(folder/'result.txt').write_text(str(result),encoding='utf-8')
print('Результат:',str(result))
