.class Lorg/telegram/ui/Telehgram/FontSelectActivity$3;
.super Ljava/lang/Object;
.source "FontSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FontSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FontSelectActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$3;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$3;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/FontSelectActivity;->fonts:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->access$000(Lorg/telegram/ui/Telehgram/FontSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "font_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FontSelectActivity$3;->this$0:Lorg/telegram/ui/Telehgram/FontSelectActivity;

    # invokes: Lorg/telegram/ui/Telehgram/FontSelectActivity;->restartApp()V
    invoke-static {v2}, Lorg/telegram/ui/Telehgram/FontSelectActivity;->access$100(Lorg/telegram/ui/Telehgram/FontSelectActivity;)V

    .line 115
    return-void
.end method
