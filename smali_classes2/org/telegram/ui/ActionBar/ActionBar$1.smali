.class Lorg/telegram/ui/ActionBar/ActionBar$1;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_c

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 125
    :cond_b
    :goto_b
    return-void

    .line 122
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    if-eqz v0, :cond_b

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    goto :goto_b
.end method
