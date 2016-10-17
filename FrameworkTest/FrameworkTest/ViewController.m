
#import "ViewController.h"
#import <myFramework/myFramework.h>
#import <myFramework/AnchorShowEndView.h>
@interface ViewController ()
@property (strong, nonatomic) ShowHUDAndXib *cellTest;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
}
- (IBAction)clickToLoadXib:(id)sender {
    ShowHUDAndXib *test = [[ShowHUDAndXib alloc] init];
    [test loadNibOnView:self.view];
}
- (IBAction)clickToShowHUD:(id)sender {
    ShowHUDAndXib *test = [[ShowHUDAndXib alloc] init];
    [test showHUDOnView:self.view];
}

- (IBAction)clickToLoadCell:(id)sender {
    ShowHUDAndXib *test = [[ShowHUDAndXib alloc] init];
    self.cellTest = test;
    [test loadTableViewOnView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
