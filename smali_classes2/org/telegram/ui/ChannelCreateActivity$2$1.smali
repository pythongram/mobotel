.class Lorg/telegram/ui/ChannelCreateActivity$2$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$2;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelCreateActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelCreateActivity$2;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 214
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$602(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 215
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$2$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$2;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$2;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelCreateActivity;->access$202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    .line 217
    :try_start_17
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 221
    :goto_1a
    return-void

    .line 218
    :catch_1b
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method
