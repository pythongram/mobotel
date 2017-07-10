.class Lorg/telegram/messenger/ContactsController$18$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$18;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$18;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$18;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$18;

    .prologue
    .line 1875
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1878
    const/4 v1, 0x0

    .line 1879
    .local v1, "remove":Z
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$18;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1880
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1881
    .local v0, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v0, :cond_b

    .line 1882
    const/4 v1, 0x1

    .line 1883
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1884
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_b

    .line 1887
    .end local v0    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3d
    if-eqz v1, :cond_46

    .line 1888
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v3, v7}, Lorg/telegram/messenger/ContactsController;->access$1700(Lorg/telegram/messenger/ContactsController;Z)V

    .line 1890
    :cond_46
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1891
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1892
    return-void
.end method
