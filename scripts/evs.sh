for lang in en es de ja zh vi th
do
echo "${lang} W ${lang} C" >> evs.txt
python evs_script.py ~/data/w2v/${lang}.300.vec ~/data/w2v/${lang}.300.context >> evs.txt
done

for lang in es de ja zh vi th
do
echo "en W ${lang} W" >> evs.txt
python evs_script.py ~/data/w2v/en.300.vec ~/data/w2v/${lang}.300.vec >> evs.txt
done

for lang in es de ja zh vi th
do
echo "en W ${lang} C" >> evs.txt
python evs_script.py ~/data/w2v/en.300.vec ~/data/w2v/${lang}.300.context >> evs.txt
done