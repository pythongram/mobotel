.class Lorg/telegram/ui/DocumentSelectActivity$1$1;
.super Ljava/lang/Object;
.source "DocumentSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DocumentSelectActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DocumentSelectActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DocumentSelectActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/DocumentSelectActivity$1;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/telegram/ui/DocumentSelectActivity$1$1;->this$1:Lorg/telegram/ui/DocumentSelectActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$1$1;->this$1:Lorg/telegram/ui/DocumentSelectActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/DocumentSelectActivity$1;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_12

    .line 109
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$1$1;->this$1:Lorg/telegram/ui/DocumentSelectActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/DocumentSelectActivity$1;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->listRoots()V
    invoke-static {v1}, Lorg/telegram/ui/DocumentSelectActivity;->access$100(Lorg/telegram/ui/DocumentSelectActivity;)V

    .line 116
    :goto_11
    return-void

    .line 111
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/DocumentSelectActivity$1$1;->this$1:Lorg/telegram/ui/DocumentSelectActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/DocumentSelectActivity$1;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    iget-object v2, p0, Lorg/telegram/ui/DocumentSelectActivity$1$1;->this$1:Lorg/telegram/ui/DocumentSelectActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/DocumentSelectActivity$1;->this$0:Lorg/telegram/ui/DocumentSelectActivity;

    # getter for: Lorg/telegram/ui/DocumentSelectActivity;->currentDir:Ljava/io/File;
    invoke-static {v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$000(Lorg/telegram/ui/DocumentSelectActivity;)Ljava/io/File;

    move-result-object v2

    # invokes: Lorg/telegram/ui/DocumentSelectActivity;->listFiles(Ljava/io/File;)Z
    invoke-static {v1, v2}, Lorg/telegram/ui/DocumentSelectActivity;->access$200(Lorg/telegram/ui/DocumentSelectActivity;Ljava/io/File;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_11

    .line 113
    :catch_22
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_11
.end method
