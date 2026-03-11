# base
# CUDA_VISIBLE_DEVICES=0,1,2,3 python main.py \
#     --data_root data/ScienceQA/data \
#     --caption_file data/instruct_captions.json \
#     --model google/flan-t5-base \
#     --user_msg rationale --img_type detr \
#     --bs 4 --eval_bs 4 --epoch 16 --lr 8e-5 --output_len 512 \
#     --use_generate --final_eval --prompt_format QCM-E \
#     --output_dir experiments_test_1024_copy \
#     --evaluate_dir /data//66st/m-cot-main/Experiments1222_ab/rationale_google-flan-t5-base_detr_QCM-E_lr8e-05_bs8_op512_ep100/
    # --evaluate_dir 
# --evaluate_dir /data//66st/m-cot-main/Experiments1229_ab/rationale_google-flan-t5-base_detr_QCM-E_lr8e-05_bs8_op512_ep100
CUDA_VISIBLE_DEVICES=4,5,6,7 python main.py \
    --data_root data/ScienceQA/data \
    --caption_file data/instruct_captions.json \
    --model google/flan-t5-base \
    --user_msg answer --img_type detr \
    --bs 4 --eval_bs 4 --epoch 16 --lr 8e-5 --output_len 64 \
    --use_generate --prompt_format QCMG-A \
    --output_dir experiments_test_1024_copy \
    --eval_le Experiments1130/rationale_google-flan-t5-base_detr_QCM-E_lr8e-05_bs16_op512_ep100/forward_val_gemini.json \
    --test_le /data//66st/m-cot-main/Experiments1229_ab/rationale_google-flan-t5-base_detr_QCM-E_lr8e-05_bs8_op512_ep100/predictions_ans_test.json \
    --evaluate_dir /data//66st/m-cot-main/experiments1230/answer_google-flan-t5-base_detr_QCMG-A_lr8e-05_bs8_op64_ep100/
