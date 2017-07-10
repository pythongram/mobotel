.class Lorg/telegram/ui/GroupCreateActivity$6;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 501
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$6;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 504
    const/4 v0, 0x6

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$6;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # invokes: Lorg/telegram/ui/GroupCreateActivity;->onDonePressed()Z
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1000(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
