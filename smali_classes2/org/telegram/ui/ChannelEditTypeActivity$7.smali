.class Lorg/telegram/ui/ChannelEditTypeActivity$7;
.super Ljava/lang/Object;
.source "ChannelEditTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditTypeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditTypeActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditTypeActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditTypeActivity;

    .prologue
    .line 328
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1100(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v3

    if-nez v3, :cond_9

    .line 342
    :goto_8
    return-void

    .line 335
    :cond_9
    :try_start_9
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 336
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v3, "label"

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    # getter for: Lorg/telegram/ui/ChannelEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    invoke-static {v4}, Lorg/telegram/ui/ChannelEditTypeActivity;->access$1100(Lorg/telegram/ui/ChannelEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 337
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 338
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditTypeActivity$7;->this$0:Lorg/telegram/ui/ChannelEditTypeActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditTypeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "LinkCopied"

    const v5, 0x7f0702e0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_3c

    goto :goto_8

    .line 339
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :catch_3c
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method
