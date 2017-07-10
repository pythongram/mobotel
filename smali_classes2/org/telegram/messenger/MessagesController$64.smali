.class Lorg/telegram/messenger/MessagesController$64;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->markDialogAsRead(JIIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$dialog_id:J

.field final synthetic val$max_positive_id:I

.field final synthetic val$popup:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;JZI)V
    .registers 6
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 4158
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$64;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$64;->val$dialog_id:J

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesController$64;->val$popup:Z

    iput p5, p0, Lorg/telegram/messenger/MessagesController$64;->val$max_positive_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 4161
    new-instance v0, Lorg/telegram/messenger/MessagesController$64$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$64$1;-><init>(Lorg/telegram/messenger/MessagesController$64;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4182
    return-void
.end method
