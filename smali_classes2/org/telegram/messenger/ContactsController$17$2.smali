.class Lorg/telegram/messenger/ContactsController$17$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$17;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$17;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$17;Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$17;

    .prologue
    .line 1809
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$17$2;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1812
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$17$2;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1813
    .local v1, "u":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1814
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$17;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1815
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 1816
    .local v0, "newContact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 1817
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$17;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$17;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 1821
    .end local v0    # "newContact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v1    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_48
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$17;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->access$1700(Lorg/telegram/messenger/ContactsController;Z)V

    .line 1822
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1823
    return-void
.end method
