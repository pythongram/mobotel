.class Lorg/telegram/messenger/FileLoader$8;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->deleteFiles(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$files:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Ljava/util/ArrayList;I)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 909
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$8;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$8;->val$files:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/FileLoader$8;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 912
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$8;->val$files:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5c

    .line 913
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$8;->val$files:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 914
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 916
    :try_start_17
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_20

    .line 917
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_52

    .line 924
    :cond_20
    :goto_20
    :try_start_20
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "q_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 925
    .local v3, "qFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 926
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 927
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4f} :catch_57

    .line 912
    .end local v3    # "qFile":Ljava/io/File;
    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 919
    :catch_52
    move-exception v1

    .line 920
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 930
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_57
    move-exception v1

    .line 931
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 934
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    :cond_5c
    iget v4, p0, Lorg/telegram/messenger/FileLoader$8;->val$type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_68

    .line 935
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 937
    :cond_68
    return-void
.end method
