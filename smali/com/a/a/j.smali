.class Lcom/a/a/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/a/a/a;->b()Lcom/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->g(Lcom/a/a/a;)Landroid/content/Context;

    move-result-object v1

    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "unsent_requests"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/a/a/j;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_2b

    :cond_24
    :goto_24
    invoke-direct {p0, v1}, Lcom/a/a/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->a:Ljava/util/List;

    return-void

    :catch_2b
    move-exception v0

    const-string v2, "Sentry"

    const-string v3, "Error initializing storage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method synthetic constructor <init>(Lcom/a/a/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/a/a/j;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .registers 5

    :try_start_0
    const-string v0, "unsent_requests"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    :goto_19
    const-string v1, "Sentry"

    const-string v2, "Error loading from storage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17

    :catch_26
    move-exception v0

    goto :goto_19
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)V
    .registers 6

    :try_start_0
    const-string v0, "unsent_requests"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string v1, "Sentry"

    const-string v2, "Error saving to storage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method static synthetic b()Lcom/a/a/j;
    .registers 1

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/a/a/j;
    .registers 1

    invoke-static {}, Lcom/a/a/k;->a()Lcom/a/a/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Lcom/a/a/j;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public a(Lcom/a/a/p;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding request - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/p;->a(Lcom/a/a/p;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/a/a/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/a/a/a;->b()Lcom/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->g(Lcom/a/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/j;->a:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/a/a/j;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public b(Lcom/a/a/p;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing request - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/p;->a(Lcom/a/a/p;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/a/a/a;->b()Lcom/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a;->g(Lcom/a/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/j;->a:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/a/a/j;->a(Landroid/content/Context;Ljava/util/List;)V

    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method
