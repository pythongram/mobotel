.class Lorg/telegram/ui/ChangeUsernameActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangeUsernameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 128
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->finishFragment()V

    .line 133
    :cond_8
    :goto_8
    return-void

    .line 130
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$1;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    # invokes: Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V
    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$000(Lorg/telegram/ui/ChangeUsernameActivity;)V

    goto :goto_8
.end method
