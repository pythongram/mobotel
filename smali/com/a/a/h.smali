.class Lcom/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;

.field private final b:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b;)V
    .registers 2

    invoke-direct {p0}, Lcom/a/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lorg/json/JSONArray;
    .registers 9

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_5
    iget-object v0, p0, Lcom/a/a/h;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/a/a/h;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/f;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "timestamp"

    iget-wide v6, v0, Lcom/a/a/f;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "type"

    iget-object v5, v0, Lcom/a/a/f;->b:Lcom/a/a/g;

    invoke-static {v5}, Lcom/a/a/g;->a(Lcom/a/a/g;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "message"

    iget-object v5, v0, Lcom/a/a/f;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "category"

    iget-object v5, v0, Lcom/a/a/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "level"

    iget-object v5, v0, Lcom/a/a/f;->e:Lcom/a/a/o;

    invoke-static {v5}, Lcom/a/a/o;->a(Lcom/a/a/o;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "data"

    new-instance v5, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/a/a/f;->f:Ljava/util/Map;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5f} :catch_60
    .catchall {:try_start_5 .. :try_end_5f} :catchall_7c

    goto :goto_14

    :catch_60
    move-exception v0

    :try_start_61
    const-string v2, "Sentry"

    const-string v3, "Error serializing breadcrumbs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_7c

    iget-object v0, p0, Lcom/a/a/h;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_71
    return-object v1

    :cond_72
    iget-object v0, p0, Lcom/a/a/h;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_71

    :catchall_7c
    move-exception v0

    iget-object v1, p0, Lcom/a/a/h;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
