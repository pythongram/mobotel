.class Lorg/telegram/messenger/MediaController$22$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController$22;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$22;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController$22;

    .prologue
    .line 3038
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$22$2;->this$0:Lorg/telegram/messenger/MediaController$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3042
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$22$2;->this$0:Lorg/telegram/messenger/MediaController$22;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$22;->val$finalProgress:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 3046
    :goto_7
    return-void

    .line 3043
    :catch_8
    move-exception v0

    .line 3044
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
