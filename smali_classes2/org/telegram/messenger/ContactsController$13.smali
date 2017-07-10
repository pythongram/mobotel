.class Lorg/telegram/messenger/ContactsController$13;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$uid:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Integer;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 1527
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$13;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$13;->val$uid:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1530
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$13;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$13;->val$uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$1600(Lorg/telegram/messenger/ContactsController;I)V

    .line 1531
    return-void
.end method
