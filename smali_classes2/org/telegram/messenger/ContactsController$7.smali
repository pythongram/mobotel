.class Lorg/telegram/messenger/ContactsController$7;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 948
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .registers 8
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v3, 0x0

    .line 951
    if-nez p2, :cond_44

    move-object v0, p1

    .line 952
    check-cast v0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;

    .line 953
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_contactsNotModified;

    if-eqz v1, :cond_45

    .line 954
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 955
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$700(Lorg/telegram/messenger/ContactsController;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 956
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2, v3, v3, v3}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 957
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 959
    :cond_37
    new-instance v1, Lorg/telegram/messenger/ContactsController$7$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$7$1;-><init>(Lorg/telegram/messenger/ContactsController$7;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 968
    const-string v1, "load contacts don\'t change"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 973
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    :cond_44
    :goto_44
    return-void

    .line 971
    .restart local v0    # "res":Lorg/telegram/tgnet/TLRPC$contacts_Contacts;
    :cond_45
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->contacts:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->users:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_44
.end method
