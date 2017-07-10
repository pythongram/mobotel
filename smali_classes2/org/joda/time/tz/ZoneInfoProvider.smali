.class public Lorg/joda/time/tz/ZoneInfoProvider;
.super Ljava/lang/Object;
.source "ZoneInfoProvider.java"

# interfaces
.implements Lorg/joda/time/tz/Provider;


# instance fields
.field private final iFileDir:Ljava/io/File;

.field private final iLoader:Ljava/lang/ClassLoader;

.field private final iResourcePath:Ljava/lang/String;

.field private final iZoneInfoMap:Ljava/util/Map;
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
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_e

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No file directory provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 61
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File directory doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 64
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File doesn\'t refer to a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_4c
    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iFileDir:Ljava/io/File;

    .line 68
    iput-object v1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iResourcePath:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    .line 71
    const-string v0, "ZoneInfoMap"

    invoke-direct {p0, v0}, Lorg/joda/time/tz/ZoneInfoProvider;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoProvider;->loadZoneInfoMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/tz/ZoneInfoProvider;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/tz/ZoneInfoProvider;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Z)V

    .line 97
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p1, :cond_d

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No resource path provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_d
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iFileDir:Ljava/io/File;

    .line 115
    iput-object p1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iResourcePath:Ljava/lang/String;

    .line 117
    if-nez p2, :cond_39

    if-nez p3, :cond_39

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 121
    :cond_39
    iput-object p2, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    .line 123
    const-string v0, "ZoneInfoMap"

    invoke-direct {p0, v0}, Lorg/joda/time/tz/ZoneInfoProvider;->openResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/tz/ZoneInfoProvider;->loadZoneInfoMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    .line 124
    return-void
.end method

.method private loadZoneData(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 224
    .line 226
    :try_start_1
    invoke-direct {p0, p1}, Lorg/joda/time/tz/ZoneInfoProvider;->openResource(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_2a

    move-result-object v2

    .line 227
    :try_start_5
    invoke-static {v2, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readFrom(Ljava/io/InputStream;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 228
    iget-object v3, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_3a
    .catchall {:try_start_5 .. :try_end_13} :catchall_38

    .line 236
    if-eqz v2, :cond_18

    .line 237
    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_32

    .line 241
    :cond_18
    :goto_18
    return-object v0

    .line 230
    :catch_19
    move-exception v0

    move-object v2, v1

    .line 231
    :goto_1b
    :try_start_1b
    invoke-virtual {p0, v0}, Lorg/joda/time/tz/ZoneInfoProvider;->uncaughtException(Ljava/lang/Exception;)V

    .line 232
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_38

    .line 236
    if-eqz v2, :cond_28

    .line 237
    :try_start_25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_34

    :cond_28
    :goto_28
    move-object v0, v1

    .line 241
    goto :goto_18

    .line 235
    :catchall_2a
    move-exception v0

    move-object v2, v1

    .line 236
    :goto_2c
    if-eqz v2, :cond_31

    .line 237
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_36

    .line 241
    :cond_31
    :goto_31
    throw v0

    .line 239
    :catch_32
    move-exception v1

    goto :goto_18

    :catch_34
    move-exception v0

    goto :goto_28

    :catch_36
    move-exception v1

    goto :goto_31

    .line 235
    :catchall_38
    move-exception v0

    goto :goto_2c

    .line 230
    :catch_3a
    move-exception v0

    goto :goto_1b
.end method

.method private static loadZoneInfoMap(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 253
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 255
    :try_start_a
    invoke-static {v1, v0}, Lorg/joda/time/tz/ZoneInfoProvider;->readZoneInfoMap(Ljava/io/DataInputStream;Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1d

    .line 258
    :try_start_d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_22

    .line 262
    :goto_10
    const-string v1, "UTC"

    new-instance v2, Ljava/lang/ref/SoftReference;

    sget-object v3, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-object v0

    .line 257
    :catchall_1d
    move-exception v0

    .line 258
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24

    .line 261
    :goto_21
    throw v0

    .line 259
    :catch_22
    move-exception v1

    goto :goto_10

    :catch_24
    move-exception v1

    goto :goto_21
.end method

.method private openResource(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iFileDir:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 197
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iFileDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 214
    :cond_10
    return-object v0

    .line 199
    :cond_11
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iResourcePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_52

    .line 201
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 205
    :goto_21
    if-nez v0, :cond_10

    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "Resource not found: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" ClassLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_52
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_21

    .line 206
    :cond_57
    const-string v0, "system"

    goto :goto_44
.end method

.method private static readZoneInfoMap(Ljava/io/DataInputStream;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 275
    new-array v3, v2, [Ljava/lang/String;

    move v1, v0

    .line 276
    :goto_8
    if-ge v1, v2, :cond_17

    .line 277
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 281
    :cond_17
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 282
    :goto_1b
    if-ge v0, v1, :cond_38

    .line 284
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    aget-object v4, v3, v4

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d .. :try_end_2c} :catch_2f

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 285
    :catch_2f
    move-exception v0

    .line 286
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupt zone info map"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_38
    return-void
.end method


# virtual methods
.method public getAvailableIDs()Ljava/util/Set;
    .registers 3
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
    .line 174
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 136
    if-nez p1, :cond_5

    move-object v0, v1

    .line 162
    :cond_4
    :goto_4
    return-object v0

    .line 140
    :cond_5
    iget-object v0, p0, Lorg/joda/time/tz/ZoneInfoProvider;->iZoneInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    if-nez v0, :cond_f

    move-object v0, v1

    .line 142
    goto :goto_4

    .line 145
    :cond_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 147
    invoke-direct {p0, p1}, Lorg/joda/time/tz/ZoneInfoProvider;->loadZoneData(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_4

    .line 150
    :cond_1a
    instance-of v1, v0, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_2d

    .line 152
    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 153
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    .line 154
    if-nez v0, :cond_4

    .line 158
    invoke-direct {p0, p1}, Lorg/joda/time/tz/ZoneInfoProvider;->loadZoneData(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_4

    .line 162
    :cond_2d
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/joda/time/tz/ZoneInfoProvider;->getZone(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    goto :goto_4
.end method

.method protected uncaughtException(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 185
    return-void
.end method
