.class Lorg/telegram/messenger/query/StickersQuery$19$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$19;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$19;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$19;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$19;

    .prologue
    .line 798
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$19$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$19;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$19$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/query/StickersQuery$19$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 801
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$19$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_57

    .line 802
    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$19$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;

    .line 803
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;
    # getter for: Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$1800()[I

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/query/StickersQuery$19$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$19;

    iget v3, v3, Lorg/telegram/messenger/query/StickersQuery$19;->val$type:I

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->count:I

    aput v4, v2, v3

    .line 804
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "Notifications"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 805
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "archivedStickersCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$19$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$19;

    iget v4, v4, Lorg/telegram/messenger/query/StickersQuery$19;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;->count:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 806
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoaded:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$19$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$19;

    iget v5, v5, Lorg/telegram/messenger/query/StickersQuery$19;->val$type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 808
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers;
    :cond_57
    return-void
.end method
