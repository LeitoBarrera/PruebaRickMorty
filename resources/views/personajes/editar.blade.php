<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Personaje - {{ $personaje->name }}</title>
    @vite('resources/css/app.css')
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            font-family: 'Arial', sans-serif;
        }
        
        .card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 40px !important; /* Más espacio interno */
        }
        
        .btn-primary {
            background: linear-gradient(45deg, #11998e, #38ef7d);
            color: white;
            padding: 15px 30px;
            border-radius: 25px;
            border: none;
            font-weight: bold;
            box-shadow: 0 8px 20px rgba(17, 153, 142, 0.3);
            transition: all 0.3s ease;
            cursor: pointer;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            text-decoration: none;
        }
        
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 25px rgba(17, 153, 142, 0.4);
        }
        
        .btn-secondary {
            background: linear-gradient(45deg, #bdc3c7, #2c3e50);
            color: white;
            padding: 15px 30px;
            border-radius: 25px;
            border: none;
            font-weight: bold;
            box-shadow: 0 8px 20px rgba(44, 62, 80, 0.3);
            transition: all 0.3s ease;
            cursor: pointer;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            text-decoration: none;
        }
        
        .btn-secondary:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 25px rgba(44, 62, 80, 0.4);
            color: white;
            text-decoration: none;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-label {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: bold;
            color: #333;
            margin-bottom: 8px;
            font-size: 16px;
        }
        
        .form-input, .form-select {
            width: 100%;
            max-width: 100%;
            padding: 15px;
            border: 2px solid #e1e8ed;
            border-radius: 15px;
            font-size: 16px;
            transition: all 0.3s ease;
            background: rgba(255, 255, 255, 0.9);
            box-sizing: border-box;
        }
        
        .form-input:focus, .form-select:focus {
            outline: none;
            border-color: #11998e;
            box-shadow: 0 0 20px rgba(17, 153, 142, 0.2);
            transform: translateY(-2px);
        }
        
        .title {
            background: linear-gradient(45deg, #ff6b6b, #feca57);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            color: #ff6b6b; /* Fallback color */
            font-size: 2.5rem;
            font-weight: bold;
            text-align: center;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }
        
        .subtitle {
            text-align: center;
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 2rem;
        }
        
        .back-btn {
            background: linear-gradient(45deg, #ff9a9e, #fecfef);
            color: #333;
            padding: 10px 20px;
            border-radius: 20px;
            text-decoration: none;
            font-weight: bold;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 20px;
            transition: all 0.3s ease;
        }
        
        .back-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(255, 154, 158, 0.3);
            color: #333;
            text-decoration: none;
        }
        
        .preview-card {
            background: linear-gradient(45deg, #ffecd2, #fcb69f);
            border-radius: 15px;
            padding: 20px;
            text-align: center;
            margin-top: 20px;
            border: 2px solid #fcb69f;
        }
        
        .preview-avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            border: 4px solid #11998e;
            margin: 0 auto 10px;
        }
        
        .button-group {
            display: flex;
            gap: 15px;
            margin-top: 40px;
            padding-top: 20px;
        }
        
        .button-group > * {
            flex: 1;
        }
        
        .container-custom {
            max-width: 700px; /* Hacer el contenedor un poco más ancho */
            margin: 0 auto;
            padding: 0 20px;
        }
        
        @media (max-width: 640px) {
            .button-group {
                flex-direction: column;
            }
            
            .container-custom {
                max-width: 100%;
                padding: 0 15px;
            }
            
            .card {
                padding: 25px !important;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="container-custom py-8">
        <!-- Back Button -->
        <a href="/" class="back-btn">
            <i class="fas fa-arrow-left"></i>
            Volver a la lista
        </a>

        <!-- Header -->
        <h1 class="title">
            <i class="fas fa-user-edit" style="color: #ff9a9e;"></i>
            Editar Personaje
        </h1>
        <p class="subtitle">{{ $personaje->name }}</p>

        <!-- Edit Form -->
        <div class="card">
            <form action="/actualizar/{{ $personaje->id }}" method="POST">
                @csrf
                
                <!-- Name Field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-user" style="color: #11998e;"></i>
                        Nombre del Personaje
                    </label>
                    <input 
                        type="text" 
                        name="name" 
                        value="{{ $personaje->name }}" 
                        class="form-input"
                        placeholder="Ingresa el nombre del personaje"
                        required
                    />
                </div>

                <!-- Status Field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-heartbeat" style="color: #e74c3c;"></i>
                        Estado
                    </label>
                    <select name="status" class="form-select">
                        <option value="Alive" {{ $personaje->status === 'Alive' ? 'selected' : '' }}>🟢 Vivo</option>
                        <option value="Dead" {{ $personaje->status === 'Dead' ? 'selected' : '' }}>🔴 Muerto</option>
                        <option value="unknown" {{ $personaje->status === 'unknown' ? 'selected' : '' }}>⚪ Desconocido</option>
                    </select>
                </div>

                <!-- Species Field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-dna" style="color: #3498db;"></i>
                        Especie
                    </label>
                    <input 
                        type="text" 
                        name="species" 
                        value="{{ $personaje->species }}" 
                        class="form-input"
                        placeholder="Especie del personaje"
                        required
                    />
                </div>

                <!-- Type Field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-tag" style="color: #f39c12;"></i>
                        Tipo
                    </label>
                    <input 
                        type="text" 
                        name="type" 
                        value="{{ $personaje->type }}" 
                        class="form-input"
                        placeholder="Tipo o subtipo (opcional)"
                    />
                </div>

                <!-- Gender Field -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-venus-mars" style="color: #e91e63;"></i>
                        Género
                    </label>
                    <select name="gender" class="form-select">
                        <option value="Male" {{ $personaje->gender === 'Male' ? 'selected' : '' }}>👨 Masculino</option>
                        <option value="Female" {{ $personaje->gender === 'Female' ? 'selected' : '' }}>👩 Femenino</option>
                        <option value="Genderless" {{ $personaje->gender === 'Genderless' ? 'selected' : '' }}>⚪ Sin género</option>
                        <option value="unknown" {{ $personaje->gender === 'unknown' ? 'selected' : '' }}>❓ Desconocido</option>
                    </select>
                </div>

                <!-- Action Buttons -->
                <div class="button-group">
                    <button type="submit" class="btn-primary">
                        <i class="fas fa-save"></i>
                        Guardar Cambios
                    </button>
                    
                    <a href="/" class="btn-secondary">
                        <i class="fas fa-times"></i>
                        Cancelar
                    </a>
                </div>
            </form>
        </div>

        <!-- Character Preview Card -->
        @if($personaje->image)
        <div class="preview-card">
            <h3 style="color: #333; margin-bottom: 15px; display: flex; align-items: center; justify-content: center; gap: 8px;">
                <i class="fas fa-image" style="color: #ff9a9e;"></i>
                Vista Previa del Personaje
            </h3>
            <img 
                src="{{ $personaje->image }}" 
                alt="{{ $personaje->name }}" 
                class="preview-avatar"
            >
            <p style="color: #666; font-weight: bold;">{{ $personaje->name }}</p>
            <p style="color: #888; font-size: 14px;">{{ $personaje->species }}</p>
        </div>
        @endif
    </div>
</body>
</html>