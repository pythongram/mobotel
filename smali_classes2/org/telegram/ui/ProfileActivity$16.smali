.class Lorg/telegram/ui/ProfileActivity$16;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->processOnClickOrPress(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;I)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1173
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$16;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1178
    :try_start_0
    iget v5, p0, Lorg/telegram/ui/ProfileActivity$16;->val$position:I

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->channelInfoRow:I
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$4600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v6

    if-ne v5, v6, :cond_15

    .line 1179
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    .line 1184
    .local v0, "about":Ljava/lang/String;
    :goto_12
    if-nez v0, :cond_2c

    .line 1193
    .end local v0    # "about":Ljava/lang/String;
    :goto_14
    return-void

    .line 1181
    :cond_15
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$16;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;
    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-result-object v6

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v4

    .line 1182
    .local v4, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v4, :cond_2a

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .restart local v0    # "about":Ljava/lang/String;
    :goto_29
    goto :goto_12

    .end local v0    # "about":Ljava/lang/String;
    :cond_2a
    const/4 v0, 0x0

    goto :goto_29

    .line 1187
    .end local v4    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    .restart local v0    # "about":Ljava/lang/String;
    :cond_2c
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 1188
    .local v2, "clipboard":Landroid/content/ClipboardManager;
    const-string v5, "label"

    invoke-static {v5, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1189
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_14

    .line 1190
    .end local v0    # "about":Ljava/lang/String;
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v2    # "clipboard":Landroid/content/ClipboardManager;
    :catch_40
    move-exception v3

    .line 1191
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_14
.end method
