# Dual Word Embedding for UBLI
This repository is the official Python and CuPy implementation of our following TASLP paper:

H. Cao, L. Li, C. Zhu, M. Yang and T. Zhao, "Dual Word Embedding for Robust Unsupervised Bilingual Lexicon Induction," in IEEE/ACM Transactions on Audio, Speech, and Language Processing, vol. 31, pp. 2606-2615, 2023. [[pdf]](https://doi.org/10.1109/TASLP.2023.3290425)

<div align=center><img src="./embedding%20space.png" width="60%" /></div>

We propose a novel approach to making full use of both input and output vectors for more robust and strong UBLI. We discover the Common Difference Property that one orthogonal transformation can connect not only the input vectors of two languages but also the output vectors. Therefore, we can learn just one transformation to induce two different dictionaries from the input and output vectors, respectively. Between these two quite different dictionaries, a more accurate lexicon with less noise can be induced by taking the intersection of them in UBLI procedure. Our method is based on the [VecMap](https://github.com/artetxem/vecmap.git).

# Run the Code
The main part is `map_embeddings_wc.py`.

You can run `map_embeddings_wc.py` for training cross-lingual word embedding:
```shell
python map_embeddings_wc.py --unsupervised src_word_embeddings.vec src_context_embeddings.vec trg_word_embeddings.vec trg_context_embeddings.vec ./mapped_src.vec ./mapped_src_context.vec ./mapped_trg.vec ./mapped_trg_context.vec -v --cuda
```
For evaluating, you can run `eval_translation.py`:
```shell
python eval_translation.py ./mapped_src.vec ./mapped_trg.vec -d /path/of/test_dictionary --retrieval csls --cuda
```
`--cuda` is optional depending on your GPU.

# Citation
Please cite our paper if you find this repository useful.
```bibtex
@ARTICLE{10167848,
  author={Cao, Hailong and Li, Liguo and Zhu, Conghui and Yang, Muyun and Zhao, Tiejun},
  journal={IEEE/ACM Transactions on Audio, Speech, and Language Processing}, 
  title={Dual Word Embedding for Robust Unsupervised Bilingual Lexicon Induction}, 
  year={2023},
  volume={31},
  number={},
  pages={2606-2615},
  doi={10.1109/TASLP.2023.3290425}}
```