.class public Lcom/example/emptyapplication/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 11
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/example/emptyapplication/MainActivity;->setContentView(I)V

    .line 13
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/example/emptyapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    .local v0, "textView":Landroid/widget/TextView;
    const-string v1, "sdfa"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 16
    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    return-void
.end method
