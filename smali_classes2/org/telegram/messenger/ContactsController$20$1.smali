.class Lorg/telegram/messenger/ContactsController$20$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$20;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$20;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$20;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$20;

    .prologue
    .line 1955
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$20$1;->this$1:Lorg/telegram/messenger/ContactsController$20;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$20$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$20$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1958
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$20$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_26

    .line 1959
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$20$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    .line 1960
    .local v0, "ttl":Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$20$1;->this$1:Lorg/telegram/messenger/ContactsController$20;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$20;->this$0:Lorg/telegram/messenger/ContactsController;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->access$1802(Lorg/telegram/messenger/ContactsController;I)I

    .line 1961
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$20$1;->this$1:Lorg/telegram/messenger/ContactsController$20;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$20;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->access$1902(Lorg/telegram/messenger/ContactsController;I)I

    .line 1965
    .end local v0    # "ttl":Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;
    :goto_1a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1966
    return-void

    .line 1963
    :cond_26
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$20$1;->this$1:Lorg/telegram/messenger/ContactsController$20;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$20;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ContactsController;->access$1902(Lorg/telegram/messenger/ContactsController;I)I

    goto :goto_1a
.end method
