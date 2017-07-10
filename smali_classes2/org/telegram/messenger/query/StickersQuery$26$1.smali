.class Lorg/telegram/messenger/query/StickersQuery$26$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$26;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$26;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$26;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$26;

    .prologue
    .line 1184
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1188
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_46

    .line 1189
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$26;->val$stickerSet:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v1, :cond_2b

    .line 1190
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$26;->val$context:Landroid/content/Context;

    const-string v2, "MasksRemoved"

    const v3, 0x7f0702fd

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_41

    .line 1200
    :goto_22
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$26;->val$type:I

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 1201
    return-void

    .line 1192
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$26;->val$context:Landroid/content/Context;

    const-string v2, "StickersRemoved"

    const v3, 0x7f070524

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_40} :catch_41

    goto :goto_22

    .line 1197
    :catch_41
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22

    .line 1195
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_46
    :try_start_46
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$26$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$26;

    iget-object v1, v1, Lorg/telegram/messenger/query/StickersQuery$26;->val$context:Landroid/content/Context;

    const-string v2, "ErrorOccurred"

    const v3, 0x7f070210

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5b} :catch_41

    goto :goto_22
.end method
