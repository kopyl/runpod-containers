target "default" {
    dockerfile = "Dockerfile"
    tags = ["runpod/pytorch:1.10.0-py3.10-cuda11.8.0-devel"]
    contexts = {
        scripts = "../../container-template"
        proxy = "../../container-template/proxy"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-devel-ubuntu22.04"
        TORCH_URL = "https://download.pytorch.org/whl/nightly/cu118"
        TORCH_VERSION = "1.13.0"
    }
}

target "1-py38-cuda1162-devel" {
    dockerfile = "Dockerfile"
    tags = ["runpod/pytorch:1.13.1-py3.8-cuda11.6.2-devel"]
    contexts = {
        scripts = "../../container-template"
        proxy = "../../container-template/proxy"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.6.2-devel-ubuntu20.04"
        TORCH_URL = "https://download.pytorch.org/whl/cu116"
    }
}

target "201-py310-cuda1171-devel" {
    dockerfile = "Dockerfile"
    tags = ["runpod/pytorch:2.0.1-py3.10-cuda11.7.1-devel"]
    contexts = {
        scripts = "../../container-template"
        proxy = "../../container-template/proxy"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.7.1-devel-ubuntu22.04"
        TORCH_URL = "https://download.pytorch.org/whl/cu117"
    }
}

target "201-py310-cuda1180-devel" {
    dockerfile = "Dockerfile"
    tags = ["runpod/pytorch:2.0.1-py3.10-cuda11.8.0-devel"]
    contexts = {
        scripts = "../../container-template"
        proxy = "../../container-template/proxy"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.8.0-devel-ubuntu22.04"
        TORCH_URL = "https://download.pytorch.org/whl/cu118"
    }
}

target "200nightly-py310-cuda1201-devel" {
    dockerfile = "Dockerfile"
    tags = ["runpod/pytorch:2.0.0.nightly-py3.10-cuda12.0.1-devel"]
    contexts = {
        scripts = "../../container-template"
        proxy = "../../container-template/proxy"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:12.0.1-devel-ubuntu22.04"
        TORCH_URL = "https://download.pytorch.org/whl/nightly/cu121"
    }
}
