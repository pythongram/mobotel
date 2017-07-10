.class Lorg/telegram/messenger/ContactsController$19$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$19;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$19;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$19;Lorg/telegram/tgnet/TLObject;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$19;

    .prologue
    .line 1909
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$19$1;->this$1:Lorg/telegram/messenger/ContactsController$19;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$19$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    .line 1912
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController$19$1;->this$1:Lorg/telegram/messenger/ContactsController$19;

    iget-object v6, v6, Lorg/telegram/messenger/ContactsController$19;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "needGetStatuses"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1913
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController$19$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 1914
    .local v5, "vector":Lorg/telegram/tgnet/TLRPC$Vector;
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_82

    .line 1915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    .local v0, "dbUsersStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_25
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1917
    .local v1, "object":Ljava/lang/Object;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$User;-><init>()V

    .local v3, "toDbUser":Lorg/telegram/tgnet/TLRPC$User;
    move-object v2, v1

    .line 1918
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;

    .line 1920
    .local v2, "status":Lorg/telegram/tgnet/TLRPC$TL_contactStatus;
    if-eqz v2, :cond_25

    .line 1923
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v7, :cond_61

    .line 1924
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x64

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 1931
    :cond_45
    :goto_45
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1932
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_59

    .line 1933
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 1935
    :cond_59
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 1936
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 1925
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_61
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v7, :cond_6e

    .line 1926
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x65

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_45

    .line 1927
    :cond_6e
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v7, :cond_45

    .line 1928
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v8, -0x66

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_45

    .line 1938
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "status":Lorg/telegram/tgnet/TLRPC$TL_contactStatus;
    .end local v3    # "toDbUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7b
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v0, v9, v9, v9}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 1940
    .end local v0    # "dbUsersStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_82
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1941
    return-void
.end method
