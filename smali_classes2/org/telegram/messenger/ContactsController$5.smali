.class Lorg/telegram/messenger/ContactsController$5;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->readContacts()V
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
    .line 355
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$5;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$5;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$5;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-boolean v0, v0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v0, :cond_21

    .line 359
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 360
    :try_start_16
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$5;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->access$402(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 361
    monitor-exit v1

    .line 365
    :goto_1d
    return-void

    .line 361
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v0

    .line 364
    :cond_21
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$5;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V

    goto :goto_1d
.end method
