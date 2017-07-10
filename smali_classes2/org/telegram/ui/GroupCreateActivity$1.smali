.class Lorg/telegram/ui/GroupCreateActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "GroupCreateActivity.java"


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
    .line 366
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 369
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCreateActivity;->finishFragment()V

    .line 374
    :cond_8
    :goto_8
    return-void

    .line 371
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # invokes: Lorg/telegram/ui/GroupCreateActivity;->onDonePressed()Z
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1000(Lorg/telegram/ui/GroupCreateActivity;)Z

    goto :goto_8
.end method
