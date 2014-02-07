class AppDelegate

	attr_accessor :proximityKitManager

	def application(application, didFinishLaunchingWithOptions:launchOptions)

		@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
		@window.rootViewController = UIViewController.new
		@window.makeKeyAndVisible

		self.proximityKitManager = PKManager.managerWithDelegate self
		self.proximityKitManager.start

		true
	end

	def application(application, performFetchWithCompletionHandler:completionHandler) 
		self.proximityKitManager(syncWithCompletionHandler: completionHandler)
	end


	def proximityKit(manager, didEnter:region)
		NSLog "entered region %@", region
	end

	def proximityKit(manager, didExit:region)
		NSLog "exited region %@", region
	end

	def proximityKit(manager, didFailWithError: error)
		NSLog "failed with errored %@", error
	end

	def proximityKit(manager, didDetermineState: state, forRegion: region)
		NSLog "determined state %@, %@", state, region
	end

	def proximityKit(manager, didRangeBeacons: beacons, inRegion: region)
		NSLog "did range beacons %@, %@", beacons, region
	end

	def proximityKitDidSync(manager)
		NSLog "did sync"
	end

end
