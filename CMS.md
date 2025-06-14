Análise do Sistema deeper_hub_dev
Este documento descreve a estrutura e o funcionamento inferido do sistema deeper_hub_dev com base na análise do schema do seu banco de dados, combinando a arquitetura de interface (`sys_*`) com as tabelas de conteúdo e lógica de negócio (`bx_*`).

1. Visão Geral do Sistema
O sistema deeper_hub_dev é uma aplicação web modular e complexa, funcionando como um Sistema de Gerenciamento de Conteúdo (CMS) completo. A arquitetura é dividida em duas grandes áreas:

*   **Núcleo de Interface (`sys_*`):** Um conjunto de tabelas que gerencia a estrutura e a renderização da aplicação: páginas, layouts, menus, formulários, grids e blocos de conteúdo.
*   **Núcleo de Conteúdo e Lógica (`bx_*`):** Um conjunto de tabelas que gerencia os dados que preenchem a interface: usuários, perfis, permissões, posts, mídia, comentários, votos e configurações globais.

Este documento unifica a análise de ambas as áreas.

2. Principais Funcionalidades

**a. Gerenciamento de Páginas (sys_pages_*, sys_objects_page, sys_std_pages)**
*   `sys_pages_types`: Define tipos de páginas (padrão, artigo, etc.).
*   `sys_pages_layouts`: Define a estrutura visual (templates HTML, células).
*   `sys_objects_page`: Representa instâncias de páginas, associando-as a módulos e layouts.
*   `sys_std_pages`: Define páginas comuns do sistema (homepage, painel).
*   `sys_pages_blocks`, `sys_pages_blocks_data`: Permite adicionar blocos de conteúdo (HTML, texto) em células de um layout.
*   `sys_pages_wiki_blocks`: Sugere versionamento de conteúdo para blocos.

**b. Gerenciamento de Menus (sys_menu_*, sys_objects_menu)**
*   `sys_menu_sets`: Agrupa menus por módulo.
*   `sys_menu_items`: Define os links individuais dentro de um menu.
*   `sys_menu_templates`: Define modelos para a aparência dos menus.
*   `sys_objects_menu`: Configura como os menus são instanciados e exibidos.

**c. Gerenciamento de Formulários (sys_form_*, sys_objects_form)**
*   `sys_form_inputs`: Define os campos de um formulário.
*   `sys_form_displays`, `sys_form_display_inputs`: Controla a apresentação dos formulários.
*   `sys_objects_form`: Representa instâncias de formulários.

**d. Gerenciamento de Grids/Listagens (sys_grid_*, sys_objects_grid)**
*   `sys_grid_fields`: Define as colunas de uma listagem.
*   `sys_grid_actions`: Define as ações disponíveis para os itens (editar, excluir).
*   `sys_objects_grid`: Representa instâncias de grids.

**e. Widgets (sys_std_widgets, sys_std_pages_widgets, sys_std_widgets_bookmarks)**
*   `sys_std_widgets`: Define widgets reutilizáveis.
*   `sys_std_pages_widgets`: Associa widgets a páginas padrão.
*   `sys_std_widgets_bookmarks`: Permite que usuários favoritem widgets.

**f. Roteamento de URL e SEO (sys_permalinks, sys_rewrite_rules, sys_seo_*)**
*   `sys_permalinks`: Gerencia URLs amigáveis.
*   `sys_rewrite_rules`: Permite reescrever URLs.
*   `sys_seo_links`, `sys_seo_uri_rewrites`: Tabelas dedicadas para otimização de SEO.

---
### **Tabelas Auxiliares de Lógica e Conteúdo (`bx_*`)**

As seções a seguir descrevem as tabelas do `una.sql` que complementam a estrutura acima, fornecendo os dados e a lógica de negócio.

**g. Usuários, Perfis e Controle de Acesso (ACL)**
Este é o núcleo de gerenciamento de identidade, definindo *quem* pode acessar o sistema e *o que* pode fazer.
*   `bx_accounts`: Gerencia as contas de login (email, senha, data de criação).
*   `bx_persons`: Armazena os perfis dos usuários com dados pessoais (nome, sobrenome, etc.). Ligada à `bx_accounts`.
*   `bx_acl_levels`: Define os "níveis" ou papéis (roles) do sistema (ex: Administrador, Membro, Visitante).
*   `bx_acl_licenses`: Associa um perfil de usuário a um nível de ACL, efetivamente concedendo as permissões.

**h. Gerenciamento de Mídia**
Responsável por todos os arquivos de mídia que são exibidos nos blocos de conteúdo.
*   `bx_photos_files`, `bx_photos_albums`, `bx_photos_views_track`: Sistema completo para upload, organização em álbuns e rastreamento de visualizações de imagens.
*   `bx_videos_files`, `bx_videos_cmts`: Sistema para upload e gerenciamento de vídeos, incluindo comentários específicos.
*   `bx_files_main`, `bx_files_cmts`: Módulo para gerenciamento de arquivos genéricos.

**i. Conteúdo Principal e Metadados**
Estas são as tabelas que guardam os dados de conteúdo que seriam renderizados através da estrutura de `sys_pages_*`.
*   `bx_posts_posts`, `bx_articles_entries`: Tabelas que contêm o conteúdo em si, como posts de um blog ou artigos. O `object` em `sys_pages_blocks` pode referenciar um ID de uma dessas tabelas.
*   `bx_posts_meta_keywords`, `bx_articles_meta_keywords`: Permite associar tags e palavras-chave ao conteúdo.
*   `bx_posts_meta_locations`, `bx_articles_meta_locations`: Permite associar dados de geolocalização ao conteúdo.

**j. Interação do Usuário (Conteúdo Gerado pelo Usuário)**
Tabelas que armazenam todas as interações dos usuários com o conteúdo.
*   `bx_[module]_cmts` (ex: `bx_posts_cmts`, `bx_ads_cmts`): Tabelas de comentários. Cada módulo de conteúdo possui a sua.
*   `bx_[module]_votes` (ex: `bx_posts_votes`): Armazena votos (likes/dislikes) para o conteúdo.
*   `bx_[module]_favorites_track` (ex: `bx_posts_favorites_track`): Rastreia quando um usuário favorita um item de conteúdo.
*   `bx_[module]_reports_track` (ex: `bx_posts_reports_track`): Permite que usuários denunciem conteúdo.

**k. Configurações Globais do Sistema**
Tabelas administrativas essenciais para o funcionamento do CMS.
*   `bx_options_types`, `bx_options_categories`, `bx_options`: Sistema de chave-valor para todas as configurações do site.
*   `bx_langs`, `bx_langs_keys`, `bx_langs_strings`: Sistema completo de internacionalização (i18n) para traduzir a interface e o conteúdo.
*   `bx_emails_templates`: Permite a customização de templates para e-mails transacionais (boas-vindas, notificação, etc.).

---

3. Relacionamento entre Tabelas (Visão Unificada)
*   **Autor de Conteúdo:** `bx_persons.id` (via `bx_accounts`) é o autor em tabelas como `bx_posts_posts.author` ou `sys_pages_blocks.author_id`.
*   **Conteúdo em Blocos:** O campo `sys_pages_blocks.object` ou `sys_pages_blocks.content` pode conter um ID que referencia uma entrada em `bx_posts_posts` ou `bx_articles_entries`, renderizando assim um post de blog inteiro dentro de um bloco de página.
*   **Mídia em Blocos:** Da mesma forma, um bloco de conteúdo pode referenciar um ID de uma imagem em `bx_photos_files` ou de um vídeo em `bx_videos_files`.
*   **Comentários na Página:** Uma página que exibe um post (`bx_posts_posts`) carregaria os comentários associados a esse post de `bx_posts_cmts`.
*   **Permissões de Acesso:** O nível de acesso de um usuário (definido em `bx_acl_licenses` e `bx_acl_levels`) determinaria se ele pode ver uma página (`sys_objects_page`), usar uma ação de um grid (`sys_grid_actions`) ou visualizar um menu específico (`sys_menu_items`).

4. Fluxo ao Iniciar um "Index" (Página Principal/Inicial) - Revisado
O fluxo original permanece válido, mas agora enriquecido com a lógica de negócio:

1.  **Requisição e Roteamento:** A URL é traduzida para um objeto de página (`sys_objects_page`).
2.  **Verificação de Permissão:** O sistema verifica o `bx_accounts` do usuário logado (ou visitante), consulta seu nível em `bx_acl_licenses`, e verifica se este nível tem permissão para ver o objeto da página. Se não tiver, retorna um erro de acesso negado.
3.  **Carregamento de Layout e Blocos:** O layout da página (`sys_pages_layouts`) e seus blocos (`sys_pages_blocks`) são carregados.
4.  **Resolução de Conteúdo dos Blocos:** O sistema itera sobre os blocos:
    *   Se um bloco aponta para um `object` de um post, ele busca os dados em `bx_posts_posts`.
    *   Se um bloco aponta para uma galeria, ele busca os dados em `bx_photos_albums` e `bx_photos_files`.
    *   Se for texto simples, ele é renderizado diretamente.
5.  **Carregamento de Interações:** Se o conteúdo principal for um post, o sistema carrega seus comentários (`bx_posts_cmts`), contagem de votos (`bx_posts_votes`) e outras interações.
6.  **Carregamento de Menus:** Os menus (`sys_menu_items`) são carregados, e cada item também pode passar por uma verificação de permissão de ACL.
7.  **Renderização da Página:** O sistema combina o layout, o conteúdo resolvido dos blocos, os dados de interação e os menus, usando as traduções de `bx_langs_strings` se aplicável, e envia a página final para o usuário.

5. Migrações de Banco (schema_migrations)
A tabela `schema_migrations` indica que o sistema utiliza um mecanismo de versionamento de esquema de banco de dados, o que é uma prática padrão e robusta.

**Conclusão**
A arquitetura do `deeper_hub_dev` é a de um CMS maduro, que separa de forma inteligente a **estrutura da apresentação** (tabelas `sys_*`) da **gestão de dados e lógica de negócio** (tabelas `bx_*`). Para recriar ou migrar este sistema, é essencial implementar ambos os conjuntos de funcionalidades e garantir que os relacionamentos entre eles sejam mantidos.