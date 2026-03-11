# base
# CUDA_VISIBLE_DEVICES=0,3,5,6 python main.py \
#     --data_root data/ScienceQA/data \
#     --caption_file data/instruct_captions.json \
#     --model google/flan-t5-base  \
#     --user_msg rationale --img_type detr \
#     --bs 4 --eval_bs 4 --epoch 100 --lr 8e-5 --output_len 512 \
#     --use_caption --use_generate --final_eval --prompt_format QCM-E \
#     --output_dir Experiments1130

CUDA_VISIBLE_DEVICES=0,1,6,7 python main.py \
    --data_root data/ScienceQA/data \
    --caption_file data/instruct_captions.json \
    --model google/flan-t5-base \
    --user_msg answer --img_type detr \
    --bs 4 --eval_bs 4 --epoch 100 --lr 8e-5 --output_len 64 \
    --use_caption --use_generate --prompt_format QCMG-A \
    --output_dir Experiments0117_forward \
    --eval_le Experiments1130/rationale_google-flan-t5-base_detr_QCM-E_lr8e-05_bs16_op512_ep100/forward_val_gemini.json \
    --test_le Experiments1130/rationale_google-flan-t5-base_detr_QCM-E_lr8e-05_bs16_op512_ep100/forward_test_gemini.json

