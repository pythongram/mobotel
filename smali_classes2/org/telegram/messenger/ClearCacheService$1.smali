.class Lorg/telegram/messenger/ClearCacheService$1;
.super Ljava/lang/Object;
.source "ClearCacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ClearCacheService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ClearCacheService;

.field final synthetic val$keepMedia:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ClearCacheService;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/ClearCacheService;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/telegram/messenger/ClearCacheService$1;->this$0:Lorg/telegram/messenger/ClearCacheService;

    iput p2, p0, Lorg/telegram/messenger/ClearCacheService$1;->val$keepMedia:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 41
    .local v4, "currentTime":J
    const v14, 0x5265c00

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/ClearCacheService$1;->val$keepMedia:I

    if-nez v13, :cond_60

    const/4 v13, 0x7

    :goto_e
    mul-int/2addr v13, v14

    int-to-long v6, v13

    .line 42
    .local v6, "diff":J
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageLoader;->createMediaPaths()Ljava/util/HashMap;

    move-result-object v11

    .line 43
    .local v11, "paths":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_20
    :goto_20
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_af

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 44
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x4

    if-eq v13, v15, :cond_20

    .line 48
    :try_start_39
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 49
    .local v2, "array":[Ljava/io/File;
    if-eqz v2, :cond_20

    .line 50
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_46
    array-length v13, v2

    if-ge v3, v13, :cond_20

    .line 51
    aget-object v10, v2, v3

    .line 52
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 53
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v15, ".nomedia"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_63

    .line 50
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 41
    .end local v2    # "array":[Ljava/io/File;
    .end local v3    # "b":I
    .end local v6    # "diff":J
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/io/File;>;"
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "paths":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :cond_60
    const/16 v13, 0x1e

    goto :goto_e

    .line 56
    .restart local v2    # "array":[Ljava/io/File;
    .restart local v3    # "b":I
    .restart local v6    # "diff":J
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/io/File;>;"
    .restart local v10    # "f":Ljava/io/File;
    .restart local v11    # "paths":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :cond_63
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_65} :catch_8e

    const/16 v15, 0x15

    if-lt v13, v15, :cond_a1

    .line 58
    :try_start_69
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v12

    .line 59
    .local v12, "stat":Landroid/system/StructStat;
    iget-wide v0, v12, Landroid/system/StructStat;->st_atime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_93

    .line 60
    iget-wide v0, v12, Landroid/system/StructStat;->st_atime:J

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    cmp-long v13, v16, v4

    if-gez v13, :cond_5d

    .line 61
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_88} :catch_89
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_88} :catch_8e

    goto :goto_5d

    .line 66
    .end local v12    # "stat":Landroid/system/StructStat;
    :catch_89
    move-exception v8

    .line 67
    .local v8, "e":Ljava/lang/Exception;
    :try_start_8a
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_5d

    .line 75
    .end local v2    # "array":[Ljava/io/File;
    .end local v3    # "b":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "f":Ljava/io/File;
    :catch_8e
    move-exception v8

    .line 76
    .local v8, "e":Ljava/lang/Throwable;
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 63
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v2    # "array":[Ljava/io/File;
    .restart local v3    # "b":I
    .restart local v10    # "f":Ljava/io/File;
    .restart local v12    # "stat":Landroid/system/StructStat;
    :cond_93
    :try_start_93
    iget-wide v0, v12, Landroid/system/StructStat;->st_mtime:J

    move-wide/from16 v16, v0

    add-long v16, v16, v6

    cmp-long v13, v16, v4

    if-gez v13, :cond_5d

    .line 64
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a0} :catch_89
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_a0} :catch_8e

    goto :goto_5d

    .line 69
    .end local v12    # "stat":Landroid/system/StructStat;
    :cond_a1
    :try_start_a1
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    add-long v16, v16, v6

    cmp-long v13, v16, v4

    if-gez v13, :cond_5d

    .line 70
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_ae} :catch_8e

    goto :goto_5d

    .line 79
    .end local v2    # "array":[Ljava/io/File;
    .end local v3    # "b":I
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/io/File;>;"
    .end local v10    # "f":Ljava/io/File;
    :cond_af
    return-void
.end method
