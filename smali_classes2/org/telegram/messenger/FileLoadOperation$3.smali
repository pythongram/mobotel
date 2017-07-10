.class Lorg/telegram/messenger/FileLoadOperation$3;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;

.field final synthetic val$increment:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$3;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iput-boolean p2, p0, Lorg/telegram/messenger/FileLoadOperation$3;->val$increment:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 415
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$3;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-boolean v2, p0, Lorg/telegram/messenger/FileLoadOperation$3;->val$increment:Z

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoadOperation;->access$200(Lorg/telegram/messenger/FileLoadOperation;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 419
    :goto_8
    return-void

    .line 416
    :catch_9
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$3;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    # invokes: Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V
    invoke-static {v1, v3, v3}, Lorg/telegram/messenger/FileLoadOperation;->access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V

    goto :goto_8
.end method
