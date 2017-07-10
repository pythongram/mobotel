.class Lorg/telegram/ui/PopupNotificationActivity$8;
.super Ljava/lang/Object;
.source "PopupNotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 717
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$8;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 720
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$8;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # invokes: Lorg/telegram/ui/PopupNotificationActivity;->openCurrentMessage()V
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$800(Lorg/telegram/ui/PopupNotificationActivity;)V

    .line 721
    return-void
.end method
