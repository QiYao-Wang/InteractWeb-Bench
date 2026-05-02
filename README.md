## 🚀 Quick start 

Follow the steps below to quickly set up and run **InteractWeb-Bench**.

### 1. Environment Setup

```bash
conda create -n InteractWeb-Bench python=3.10 -y
conda activate InteractWeb-Bench
pip install -r requirements.txt
```
```bash
playwright install chromium
```
Install Node.js:
```bash
cd scripts
bash install_node.sh
```
### 2. Configure Environment Variables
Create your .env file:
```bash
cp .env.example .env
```
Edit .env and fill in your API keys and model endpoints.
### 3. Configure Experiment Settings
Edit config.yaml in the root directory:
```YALM
data_path: "path_to_your_dataset.jsonl"
output_dir: "/path_to_your_workspace/experiment_results"
models:
  builder_model: "your_builder_model"
  visual_copilot_model: "your_visual_model"
  webvoyager_model: "your_judge_model"
  user_model: "your_user_model"
```
### 4. (Optional) Launch Local Models
If using local models, start your vLLM services:
```bash
bash src/scripts/deploy_your_local_model.sh
```
You can configure multiple models and ports via LOCAL_MODELS_MAP.
### 5. Run the Benchmark
```bash
python src/experiment/run_simulation.py --config /your_config_path/
```
### 6. (Optional) Docker Deployment
```bash
docker load -i interactweb-bench_v1.0.tar
bash docker_run.sh
```
Then run:
```bash
python src/experiment/run_simulation.py --config /your_config_path/
```




