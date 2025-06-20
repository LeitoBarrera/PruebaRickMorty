<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personajes Rick and Morty</title>
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
        }
        
        .btn-primary {
            background: linear-gradient(45deg, #11998e, #38ef7d);
            color: white;
            padding: 12px 30px;
            border-radius: 25px;
            text-decoration: none;
            font-weight: bold;
            box-shadow: 0 8px 20px rgba(17, 153, 142, 0.3);
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }
        
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 25px rgba(17, 153, 142, 0.4);
            color: white;
            text-decoration: none;
        }
        
        .btn-edit {
            background: linear-gradient(45deg, #ff9a9e, #fecfef);
            color: #333;
            padding: 8px 16px;
            border-radius: 20px;
            text-decoration: none;
            font-weight: bold;
            font-size: 13px;
            box-shadow: 0 4px 15px rgba(255, 154, 158, 0.3);
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            min-width: 80px;
            justify-content: center;
        }
        
        .btn-edit:hover {
            transform: translateY(-1px);
            box-shadow: 0 6px 20px rgba(255, 154, 158, 0.4);
            color: #333;
            text-decoration: none;
        }
        
        .status-badge {
            padding: 6px 12px;
            border-radius: 15px;
            font-size: 12px;
            font-weight: bold;
            display: inline-flex;
            align-items: center;
            gap: 4px;
        }
        
        .status-alive {
            background: linear-gradient(45deg, #56ab2f, #a8e6cf);
            color: white;
        }
        
        .status-dead {
            background: linear-gradient(45deg, #ff416c, #ff4b2b);
            color: white;
        }
        
        .status-unknown {
            background: linear-gradient(45deg, #bdc3c7, #2c3e50);
            color: white;
        }
        
        .table-header {
            background: linear-gradient(45deg, #667eea, #764ba2);
            color: white;
        }
        
        .table-row:hover {
            background-color: rgba(102, 126, 234, 0.1);
            transform: scale(1.01);
            transition: all 0.3s ease;
        }
        
        .table-row {
            border-bottom: 2px solid rgba(102, 126, 234, 0.1);
        }
        
        .avatar {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            border: 3px solid #38ef7d;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        
        .details-btn {
            background: linear-gradient(45deg, #4facfe, #00f2fe);
            color: white;
            padding: 6px 12px;
            border-radius: 15px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            font-size: 11px;
            transition: all 0.3s ease;
            min-width: 70px;
        }
        
        .details-btn:hover {
            transform: translateY(-1px);
            box-shadow: 0 6px 15px rgba(79, 172, 254, 0.3);
        }
        
        .details-content {
            background: linear-gradient(45deg, #ffecd2, #fcb69f);
            border-radius: 10px;
            padding: 15px;
            margin-top: 10px;
            border: 2px solid #fcb69f;
        }
        
        .title {
            background: linear-gradient(45deg, #ff6b6b, #feca57);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            color: #ff6b6b; /* Fallback color */
            font-size: 3rem;
            font-weight: bold;
            text-align: center;
            margin-bottom: 2rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }
        
        .section-title {
            background: linear-gradient(45deg, #11998e, #38ef7d);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            font-size: 1.8rem;
            font-weight: bold;
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .empty-state {
            text-align: center;
            padding: 60px 20px;
            color: #666;
        }
        
        .empty-state i {
            font-size: 4rem;
            color: #ccc;
            margin-bottom: 20px;
        }
        
        /* Mejorar espaciado en tabla de base de datos */
        .db-table-row {
            border-bottom: 3px solid rgba(102, 126, 234, 0.1);
            padding: 8px 0;
        }
        
        .db-table-row td {
            padding: 12px 16px;
            vertical-align: middle;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="container mx-auto px-4 py-8">
        <!-- Header -->
        <h1 class="title">
            🛸 Rick and Morty - Explorador del Multiverso
        </h1>

        <!-- Save Button -->
        <div class="text-center mb-8">
            <a href="/guardar" class="btn-primary">
                <i class="fas fa-download"></i>
                Guardar en Base de Datos
            </a>
        </div>

        <!-- API Characters Section -->
        <div class="card p-6 mb-8">
            <h2 class="section-title">
                <i class="fas fa-satellite-dish" style="color: #11998e;"></i>
                Personajes desde la API
            </h2>
            
            <div class="overflow-x-auto">
                <table class="w-full border-collapse">
                    <thead>
                        <tr class="table-header">
                            <th class="p-4 text-left rounded-tl-lg">ID</th>
                            <th class="p-4 text-left">Avatar</th>
                            <th class="p-4 text-left">Nombre</th>
                            <th class="p-4 text-left">Status</th>
                            <th class="p-4 text-left">Especie</th>
                            <th class="p-4 text-left rounded-tr-lg">Detalles</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($personajes as $p)
                        <tr class="table-row border-b">
                            <td class="p-4 font-bold text-purple-600">{{ $p['id'] }}</td>
                            <td class="p-4">
                                <img src="{{ $p['image'] }}" class="avatar" alt="{{ $p['name'] }}" />
                            </td>
                            <td class="p-4 font-bold text-gray-800">{{ $p['name'] }}</td>
                            <td class="p-4">
                                @if($p['status'] === 'Alive')
                                    <span class="status-badge status-alive">
                                        <i class="fas fa-heart"></i> Vivo
                                    </span>
                                @elseif($p['status'] === 'Dead')
                                    <span class="status-badge status-dead">
                                        <i class="fas fa-skull"></i> Muerto
                                    </span>
                                @else
                                    <span class="status-badge status-unknown">
                                        <i class="fas fa-question"></i> Desconocido
                                    </span>
                                @endif
                            </td>
                            <td class="p-4 text-gray-700 font-medium">{{ $p['species'] }}</td>
                            <td class="p-4">
                                <details>
                                    <summary class="details-btn">
                                        <i class="fas fa-info-circle"></i> Ver más
                                    </summary>
                                    <div class="details-content">
                                        <div class="grid grid-cols-1 gap-2 text-sm">
                                            <div><strong>🏷️ Tipo:</strong> {{ $p['type'] ?: 'N/A' }}</div>
                                            <div><strong>👤 Género:</strong> {{ $p['gender'] }}</div>
                                            <div><strong>🌍 Origen:</strong> {{ $p['origin']['name'] }}</div>
                                        </div>
                                    </div>
                                </details>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Database Characters Section -->
        <div class="card p-6">
            <h2 class="section-title">
                <i class="fas fa-database" style="color: #11998e;"></i>
                Personajes desde la Base de Datos
            </h2>
            
            @if(\App\Models\Personaje::count() > 0)
                <div class="overflow-x-auto">
                    <table class="w-full border-collapse">
                        <thead>
                            <tr class="table-header">
                                <th class="p-4 text-left rounded-tl-lg">ID</th>
                                <th class="p-4 text-left">Nombre</th>
                                <th class="p-4 text-left">Status</th>
                                <th class="p-4 text-left">Especie</th>
                                <th class="p-4 text-left rounded-tr-lg w-28">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach (\App\Models\Personaje::all() as $p)
                            <tr class="db-table-row">
                                <td class="font-bold text-purple-600">{{ $p->id }}</td>
                                <td class="font-bold text-gray-800">{{ $p->name }}</td>
                                <td>
                                    @if($p->status === 'Alive')
                                        <span class="status-badge status-alive">
                                            <i class="fas fa-heart"></i> Vivo
                                        </span>
                                    @elseif($p->status === 'Dead')
                                        <span class="status-badge status-dead">
                                            <i class="fas fa-skull"></i> Muerto
                                        </span>
                                    @else
                                        <span class="status-badge status-unknown">
                                            <i class="fas fa-question"></i> Desconocido
                                        </span>
                                    @endif
                                </td>
                                <td class="text-gray-700 font-medium">{{ $p->species }}</td>
                                <td>
                                    <a href="/editar/{{ $p->id }}" class="btn-edit">
                                        <i class="fas fa-edit"></i>
                                        Editar
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <div class="empty-state">
                    <i class="fas fa-database"></i>
                    <h3 style="font-size: 1.5rem; margin-bottom: 10px; color: #666;">No hay personajes guardados</h3>
                    <p>Haz clic en "Guardar en Base de Datos" para comenzar</p>
                </div>
            @endif
        </div>
    </div>
</body>
</html>