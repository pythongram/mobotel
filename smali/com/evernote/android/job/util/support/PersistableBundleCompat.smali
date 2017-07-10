.class public final Lcom/evernote/android/job/util/support/PersistableBundleCompat;
.super Ljava/lang/Object;
.source "PersistableBundleCompat.java"


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "PersistableBundleCompat"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V
    .registers 4
    .param p1, "bundle"    # Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public static fromXml(Ljava/lang/String;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .registers 7
    .param p0, "xml"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 263
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_4a
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_c} :catch_30
    .catchall {:try_start_1 .. :try_end_c} :catchall_43

    .line 264
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    :try_start_c
    invoke-static {v2}, Lcom/evernote/android/job/util/support/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v3

    .line 265
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    new-instance v4, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {v4, v3}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Ljava/util/Map;)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_15} :catch_57
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_5a
    .catch Ljava/lang/VerifyError; {:try_start_c .. :try_end_15} :catch_54
    .catchall {:try_start_c .. :try_end_15} :catchall_51

    .line 277
    if-eqz v2, :cond_1a

    .line 279
    :try_start_17
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_4d

    :cond_1a
    :goto_1a
    move-object v1, v2

    .line 274
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :cond_1b
    :goto_1b
    return-object v4

    .line 267
    :catch_1c
    move-exception v4

    :goto_1d
    move-object v0, v4

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    :goto_1e
    :try_start_1e
    sget-object v4, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v4, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 269
    new-instance v4, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {v4}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>()V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_43

    .line 277
    if-eqz v1, :cond_1b

    .line 279
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_1b

    .line 280
    :catch_2e
    move-exception v5

    goto :goto_1b

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_30
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/VerifyError;
    :goto_31
    :try_start_31
    sget-object v4, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v4, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 274
    new-instance v4, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-direct {v4}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>()V
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_43

    .line 277
    if-eqz v1, :cond_1b

    .line 279
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_1b

    .line 280
    :catch_41
    move-exception v5

    goto :goto_1b

    .line 277
    .end local v0    # "e":Ljava/lang/VerifyError;
    :catchall_43
    move-exception v4

    :goto_44
    if-eqz v1, :cond_49

    .line 279
    :try_start_46
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4f

    .line 281
    :cond_49
    :goto_49
    throw v4

    .line 267
    :catch_4a
    move-exception v4

    :goto_4b
    move-object v0, v4

    goto :goto_1e

    .line 280
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    :catch_4d
    move-exception v5

    goto :goto_1a

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;*>;"
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_4f
    move-exception v5

    goto :goto_49

    .line 277
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catchall_51
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_44

    .line 271
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_54
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_31

    .line 267
    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_57
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_1d

    .end local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    :catch_5a
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_4b
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 203
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 75
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 79
    .end local p2    # "defaultValue":Z
    :cond_10
    return p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 140
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_10

    .line 142
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .line 144
    .end local p2    # "defaultValue":D
    :cond_10
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [D

    if-eqz v1, :cond_f

    .line 155
    check-cast v0, [D

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [D

    .line 157
    :goto_e
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 88
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 90
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 92
    .end local p2    # "defaultValue":I
    :cond_10
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [I

    if-eqz v1, :cond_f

    .line 103
    check-cast v0, [I

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [I

    .line 105
    :goto_e
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 114
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_10

    .line 116
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 118
    .end local p2    # "defaultValue":J
    :cond_10
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [J

    if-eqz v1, :cond_f

    .line 129
    check-cast v0, [J

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [J

    .line 131
    :goto_e
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getPersistableBundleCompat(Ljava/lang/String;)Lcom/evernote/android/job/util/support/PersistableBundleCompat;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_12

    .line 195
    new-instance v1, Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    check-cast v0, Ljava/util/Map;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;-><init>(Ljava/util/Map;)V

    .line 197
    :goto_11
    return-object v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 168
    check-cast v0, Ljava/lang/String;

    .line 170
    .end local v0    # "value":Ljava/lang/Object;
    :goto_c
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_d
    move-object v0, p2

    goto :goto_c
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 181
    check-cast v0, [Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    .line 183
    :goto_e
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V
    .registers 4
    .param p1, "bundle"    # Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    iget-object v1, p1, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 223
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 136
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 149
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 110
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 123
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public putPersistableBundleCompat(Ljava/lang/String;Lcom/evernote/android/job/util/support/PersistableBundleCompat;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    if-nez p2, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void

    .line 188
    :cond_9
    iget-object v0, p2, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    goto :goto_5
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public saveToXml()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 235
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    iget-object v2, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/evernote/android/job/util/support/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 238
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_f} :catch_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_36
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_f} :catch_23
    .catchall {:try_start_5 .. :try_end_f} :catchall_31

    move-result-object v2

    .line 252
    :try_start_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_39

    .line 248
    :goto_13
    return-object v2

    .line 240
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    :goto_16
    :try_start_16
    sget-object v2, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v2, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 243
    const-string v2, ""
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_31

    .line 252
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_13

    .line 253
    :catch_21
    move-exception v3

    goto :goto_13

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_23
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Error;
    :try_start_24
    sget-object v2, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v2, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 248
    const-string v2, ""
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_31

    .line 252
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_13

    .line 253
    :catch_2f
    move-exception v3

    goto :goto_13

    .line 251
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_31
    move-exception v2

    .line 252
    :try_start_32
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3b

    .line 254
    :goto_35
    throw v2

    .line 240
    :catch_36
    move-exception v2

    move-object v0, v2

    goto :goto_16

    .line 253
    :catch_39
    move-exception v3

    goto :goto_13

    :catch_3b
    move-exception v3

    goto :goto_35
.end method

.method public size()I
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
