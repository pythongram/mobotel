.class Lorg/telegram/messenger/MessagesController$81$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$81;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$81;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$81;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$81;

    .prologue
    .line 4794
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$81$1;->this$1:Lorg/telegram/messenger/MessagesController$81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4798
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "mainconfig"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return_dlg_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$81$1;->this$1:Lorg/telegram/messenger/MessagesController$81;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$81;->val$chat_id:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 4799
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$81$1;->this$1:Lorg/telegram/messenger/MessagesController$81;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$81;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$81$1;->this$1:Lorg/telegram/messenger/MessagesController$81;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$81;->val$chat_id:I

    neg-int v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 4802
    :cond_38
    return-void
.end method
