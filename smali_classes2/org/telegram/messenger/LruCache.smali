.class public Lorg/telegram/messenger/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# instance fields
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mapFilters:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-gtz p1, :cond_d

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_d
    iput p1, p0, Lorg/telegram/messenger/LruCache;->maxSize:I

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    .line 45
    return-void
.end method

.method private safeSizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/LruCache;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v0

    .line 212
    .local v0, "result":I
    if-gez v0, :cond_29

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_29
    return v0
.end method

.method private trimToSize(ILjava/lang/String;)V
    .registers 12
    .param p1, "maxSize"    # I
    .param p2, "justAdded"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 121
    monitor-enter p0

    .line 122
    :try_start_2
    iget-object v6, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 123
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;>;>;"
    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 124
    iget v6, p0, Lorg/telegram/messenger/LruCache;->size:I

    if-le v6, p1, :cond_1e

    iget-object v6, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 150
    :cond_1e
    monitor-exit p0

    .line 151
    return-void

    .line 127
    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 129
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .local v4, "key":Ljava/lang/String;
    if-eqz p2, :cond_34

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 133
    :cond_34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 134
    .local v5, "value":Landroid/graphics/drawable/BitmapDrawable;
    iget v6, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/LruCache;->safeSizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/messenger/LruCache;->size:I

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 137
    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "args":[Ljava/lang/String;
    array-length v6, v0

    if-le v6, v8, :cond_70

    .line 139
    iget-object v6, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 140
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_70

    .line 141
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 143
    iget-object v6, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_70
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v4, v5, v7}, Lorg/telegram/messenger/LruCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_c

    .line 150
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_76
    move-exception v6

    monitor-exit p0
    :try_end_78
    .catchall {:try_start_2 .. :try_end_78} :catchall_76

    throw v6
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 5
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p4, "newValue"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 208
    return-void
.end method

.method public final evictAll()V
    .registers 3

    .prologue
    .line 233
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/LruCache;->trimToSize(ILjava/lang/String;)V

    .line 234
    return-void
.end method

.method public final get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    if-nez p1, :cond_a

    .line 55
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_a
    monitor-enter p0

    .line 60
    :try_start_b
    iget-object v1, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 61
    .local v0, "mapValue":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_17

    .line 62
    monitor-exit p0

    .line 65
    .end local v0    # "mapValue":Landroid/graphics/drawable/BitmapDrawable;
    :goto_16
    return-object v0

    .line 64
    .restart local v0    # "mapValue":Landroid/graphics/drawable/BitmapDrawable;
    :cond_17
    monitor-exit p0

    .line 65
    const/4 v0, 0x0

    goto :goto_16

    .line 64
    .end local v0    # "mapValue":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getFilterKeys(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_10

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public final declared-synchronized maxSize()I
    .registers 2

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/telegram/messenger/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    if-eqz p1, :cond_6

    if-nez p2, :cond_e

    .line 84
    :cond_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "key == null || value == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_e
    monitor-enter p0

    .line 89
    :try_start_f
    iget v3, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LruCache;->safeSizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/LruCache;->size:I

    .line 90
    iget-object v3, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    .local v2, "previous":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_2b

    .line 92
    iget v3, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/LruCache;->safeSizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/LruCache;->size:I

    .line 94
    :cond_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_65

    .line 96
    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "args":[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v6, :cond_5a

    .line 98
    iget-object v3, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 99
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_4d

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_4d
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 104
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5a
    if-eqz v2, :cond_5f

    .line 109
    invoke-virtual {p0, v5, p1, v2, p2}, Lorg/telegram/messenger/LruCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 112
    :cond_5f
    iget v3, p0, Lorg/telegram/messenger/LruCache;->maxSize:I

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/LruCache;->trimToSize(ILjava/lang/String;)V

    .line 113
    return-object v2

    .line 94
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "previous":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_65
    move-exception v3

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v3
.end method

.method public final remove(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    if-nez p1, :cond_c

    .line 160
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "key == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :cond_c
    monitor-enter p0

    .line 165
    :try_start_d
    iget-object v3, p0, Lorg/telegram/messenger/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    .local v2, "previous":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_20

    .line 167
    iget v3, p0, Lorg/telegram/messenger/LruCache;->size:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/LruCache;->safeSizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/LruCache;->size:I

    .line 169
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_4f

    .line 171
    if-eqz v2, :cond_4e

    .line 172
    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "args":[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v6, :cond_4a

    .line 174
    iget-object v3, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 175
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_4a

    .line 176
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 178
    iget-object v3, p0, Lorg/telegram/messenger/LruCache;->mapFilters:Ljava/util/LinkedHashMap;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4a
    const/4 v3, 0x0

    invoke-virtual {p0, v5, p1, v2, v3}, Lorg/telegram/messenger/LruCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 186
    .end local v0    # "args":[Ljava/lang/String;
    :cond_4e
    return-object v2

    .line 169
    .end local v2    # "previous":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_4f
    move-exception v3

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method public final declared-synchronized size()I
    .registers 2

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/telegram/messenger/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method
